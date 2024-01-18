#include <SFML/Graphics.hpp>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <time.h>


class Lightning {
public:
    sf::RectangleShape shape;
    sf::Clock blinkClock, lifeClock;
    sf::Time nextBlink, lifetime;
    bool isVisible;
    int windowHeight;

    Lightning(float x, int windowHeight) : windowHeight(windowHeight), isVisible(true) {
        shape = sf::RectangleShape(sf::Vector2f(2, windowHeight));
        shape.setFillColor(sf::Color::White);
        shape.setPosition(x, 0);
        resetBlink();
        lifetime = sf::milliseconds(rand() % 1000 + 500); // 随机持续时间（0.5到3秒）
    }

    void resetBlink() {
        nextBlink = sf::milliseconds(rand() % 200 + 100);
        blinkClock.restart();
    }

    bool isExpired() {
        // if(lifeClock.getElapsedTime() > lifetime) isExpired = true;
        return lifeClock.getElapsedTime() > lifetime;
    }

    void update() {
        if (blinkClock.getElapsedTime() >= nextBlink) {
            isVisible = !isVisible;
            resetBlink();
        }
    }

    void draw(sf::RenderWindow &window) {
        if (isVisible) {
            window.draw(shape);
        }
    }
};

class Meteor {
public:
    sf::ConvexShape star;      // 五角星形状
    std::vector<sf::VertexArray> tails;      // 流星的尾巴
    sf::Vector2f velocity;
    const float radius = 5;
    Meteor(float x, float y) {
        createStar(x, y); // 创建五角星
        createTails(x, y); // 创建流星的尾巴

        velocity = sf::Vector2f(0, static_cast<float>(rand() % 5 + 2));
    }

    void createStar(float x, float y) {
        const int points = 5;
        const float rotation = 3.14159f / 10; // 旋转五角星使一个顶点朝上
        star.setPointCount(points * 2);
        for (int i = 0; i < points * 2; ++i) {
            float angle = rotation + i * 3.14159f / points;
            bool isOuter = i % 2 == 0;
            float r = isOuter ? radius : radius / 2;
            star.setPoint(i, sf::Vector2f(r * std::cos(angle) + x, r * std::sin(angle) + y));
        }
        star.setFillColor(sf::Color::White); // 设置填充颜色
    }

    void createTails(float x, float y) {
    // int numTails = rand() % 3 + 1; // 随机生成1到3个尾巴
    int numTails = 3;
    for (int t = 0; t < numTails; ++t) {
        int tailLength = rand() % 25 + 15; // 为每条尾巴随机生成不同的长度
        sf::VertexArray tail(sf::LinesStrip, 2); // 每条尾巴有两个点

        // 起始点（流星头部）
        tail[0].position = sf::Vector2f(x + (t - 1) * radius  / (numTails + 1), y);
        tail[0].color = sf::Color::White;

        // 结束点（根据随机长度设置）
        tail[1].position = sf::Vector2f(x + (t - 1) * radius  / (numTails + 1), y - tailLength);
        tail[1].color = sf::Color::White;

        tails.push_back(tail);
    }

}

    void fall() {
    // 更新星星的位置
    sf::Vector2f currentPosition = star.getPosition();
    star.setPosition(currentPosition + velocity);

    // 更新每条尾巴的位置
    for (auto& tail : tails) {
        for (unsigned int i = 0; i < tail.getVertexCount(); ++i) {
            tail[i].position += velocity;
        }
    }
}


    void draw(sf::RenderWindow &window) {
        window.draw(star);
        for (auto& tail : tails) {
            window.draw(tail);
        }
    }
};

class Laser {
public:
    std::vector<sf::VertexArray> lines;
    const float segmentLength = 40.0f; // 每段线条的长度

    void createSegmentedLines(sf::Vector2f startPos, sf::Vector2f endPos) {
        sf::Vector2f direction = endPos - startPos;
        float length = std::sqrt(direction.x * direction.x + direction.y * direction.y);
        direction /= length; // 单位化方向向量

        int numSegments = static_cast<int>(length / segmentLength);
        sf::Vector2f currentPos = startPos;

        for (int i = 0; i < numSegments; ++i) {
            sf::VertexArray line(sf::Lines, 4);
            line[0].position = currentPos;
            currentPos += direction * segmentLength;
            line[1].position = currentPos;
            lines.push_back(line);
        }
    }

    void update(sf::Vector2i mousePos, sf::Vector2u windowSize) {
        lines.clear();

        if (mousePos.x >= 0 && mousePos.y >= 0) {
            // 从鼠标位置到窗口四角创建分段线条
            createSegmentedLines(sf::Vector2f(mousePos), sf::Vector2f(0, 0));                       // 左上角
            createSegmentedLines(sf::Vector2f(mousePos), sf::Vector2f(windowSize.x, 0));            // 右上角
            createSegmentedLines(sf::Vector2f(mousePos), sf::Vector2f(0, windowSize.y));            // 左下角
            createSegmentedLines(sf::Vector2f(mousePos), sf::Vector2f(windowSize.x, windowSize.y)); // 右下角
        }
    }

    void draw(sf::RenderWindow& window) {
        for (auto& line : lines) {
            window.draw(line);
        }
    }
};

class Pointer {
public:
    sf::VertexArray line;
    sf::Vector2f position;
    float length;
    float angle; // 线段的当前角度
    sf::Clock updateClock; // 控制震动更新的时钟

    Pointer(sf::Vector2f pos, float len) : position(pos), length(len), angle(0.0f) {
        line = sf::VertexArray(sf::Lines, 2);
        line[0].color = sf::Color::White;
        line[1].color = sf::Color::White;
        updateLine();
    }

    void updateLine() {
        sf::Vector2f offset(std::cos(angle) * length / 2.0f, std::sin(angle) * length / 2.0f);
        line[0].position = position - offset;
        line[1].position = position + offset;
    }

    void update(sf::Vector2i mousePos) {
        sf::Vector2f mousePosition(mousePos);
        sf::Vector2f direction = mousePosition - position;
        float distance = std::sqrt(direction.x * direction.x + direction.y * direction.y);

        if (distance < 100.0f) { // 如果鼠标接近
            // 线段指向鼠标位置
            angle = std::atan2(direction.y, direction.x);
        } else if (updateClock.getElapsedTime().asMilliseconds() > (rand() % 100 + 100)) {
            // 线段轻微随机抖动
            angle += (static_cast<float>(rand() % 1) - 0.5f) * 3.14159f / 360.0f; // 减小角度变化
            updateClock.restart();
        }

        updateLine();
    }

    void draw(sf::RenderWindow &window) {
        window.draw(line);
    }
};

class Tripad {
public:
    std::vector<sf::ConvexShape> triangles;

    Tripad(sf::Vector2u windowSize) {
        float triangleSize = 50.0f; // 三角形边长
        float height = triangleSize * std::sqrt(3) / 2; // 三角形高度

        for (float y = 0; y < windowSize.y + height; y += height) {
            bool evenRow = static_cast<int>(y / height) % 2 == 0;
            for (float x = 0; x < windowSize.x + triangleSize; x += triangleSize / 2) {
                createTriangle(x, y, triangleSize, evenRow);
                evenRow = !evenRow; // 每个三角形后交替方向
            }
        }
    }

    void createTriangle(float x, float y, float size, bool pointUp) {
        sf::ConvexShape triangle(3);
        if (pointUp) {
            triangle.setPoint(0, sf::Vector2f(size / 2, 0));
            triangle.setPoint(1, sf::Vector2f(size, size * std::sqrt(3) / 2));
            triangle.setPoint(2, sf::Vector2f(0, size * std::sqrt(3) / 2));
        } else {
            triangle.setPoint(0, sf::Vector2f(0, 0));
            triangle.setPoint(1, sf::Vector2f(size, 0));
            triangle.setPoint(2, sf::Vector2f(size / 2, size * std::sqrt(3) / 2));
        }
        triangle.setOutlineColor(sf::Color::White);
        triangle.setOutlineThickness(1.0f);
        triangle.setFillColor(sf::Color::Black);
        triangle.setPosition(x, y);

        triangles.push_back(triangle);
    }

    void update(sf::Vector2i mousePos) {
        for (auto& triangle : triangles) {
            if (triangle.getGlobalBounds().contains(mousePos.x, mousePos.y)) {
                triangle.setFillColor(sf::Color::White);
            }
        }
    }

    void draw(sf::RenderWindow& window) {
        for (auto& triangle : triangles) {
            window.draw(triangle);
        }
    }
};



int main() {
    sf::RenderWindow window(sf::VideoMode(800, 600), "Interactive Display", sf::Style::Close | sf::Style::Resize);
    window.setFramerateLimit(60);

    sf::View view = window.getDefaultView();

    std::srand(static_cast<unsigned int>(std::time(nullptr)));
    std::vector<Lightning> lightnings;
    std::vector<Meteor> meteors;
    std::vector<Pointer> pointers;
    Laser lasers;
    Tripad tripad(window.getSize());


    // Display Switch
    int Mode = 3; // Start Mode indicator
    int ModeNum = 3; // Number of Modes
    bool first_enter = true;
    int ModeTime = 15; //Mode Switch Time
    sf::Clock ModeSwitchClock;

    

    while (window.isOpen()) {
        sf::Event event;
        sf::Vector2i mousePos = sf::Mouse::getPosition(window);
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
            else if (event.type == sf::Event::Resized) {
                // 确保视图的中心与窗口的中心对齐
                view.setCenter(event.size.width / 2.f, event.size.height / 2.f);
                view.setSize(event.size.width, event.size.height);
                window.setView(view);
            }
        }

        sf::Vector2i pixelPos = sf::Mouse::getPosition(window);
        sf::Vector2f worldPos = window.mapPixelToCoords(pixelPos); // 将像素坐标转换为世界坐标

        if (ModeSwitchClock.getElapsedTime().asSeconds() >= ModeTime) {
            Mode == ModeNum ? Mode = 0 : Mode++;
            std::cout << "Current Mode : " << Mode << std::endl;
            ModeSwitchClock.restart();
        }
        window.clear(sf::Color::Black);
        switch(Mode){
            case 0:
            {
            // Generate lightnings
                if (rand() % 10 < 3) {
                    for (int i = 0; i < 2; i++) {
                        float xOffset = static_cast<float>((rand() % 40) - 20);
                        lightnings.emplace_back(worldPos.x + xOffset, window.getSize().y);
                    }
                }

                //Generate Meteors
                if (rand() % 10 < 2) {
                    float x = static_cast<float>(rand() % window.getSize().x);
                    meteors.emplace_back(x, 0.0f);
                }
                if (rand() % 10 < 2) {
                    float x = static_cast<float>(rand() % window.getSize().x);
                    lightnings.emplace_back(x, 0.0f);
                }

                window.clear(sf::Color::Black);
                for (auto& lightning : lightnings) {
                    lightning.update();
                    lightning.draw(window);
                }
                for (auto& meteor : meteors) {
                    meteor.fall();
                    meteor.draw(window);
                }

                lightnings.erase(std::remove_if(lightnings.begin(), lightnings.end(),
                                                [](Lightning &l) { return l.isExpired(); }),
                                lightnings.end());
                break;
            }
            case 1:
                // 更新和绘制激光效果
                if (window.hasFocus()) { // 检查窗口是否有焦点
                    lasers.update(mousePos, window.getSize());
                }
                lasers.draw(window);
                break;
            
            case 2:
            {
                float pointer_len;
                int pointer_num = 15;
                if(first_enter){
                    for (float y = 0; y < window.getSize().y; y += window.getSize().x / pointer_num / 2) {
                        for (float x = 0; x < window.getSize().x; x += window.getSize().x / pointer_num) {
                            pointer_len = 0.8 * (window.getSize().x / pointer_num);
                            pointers.emplace_back(sf::Vector2f(x, y), pointer_len);
                        }
                    }
                    first_enter = false;
                }
                
                
                for (auto& pointer : pointers) {
                    // pointer.update(mousePos, std::max(window.getSize().y, window.getSize().x));
                    pointer.update(mousePos);
                    pointer.draw(window);
                }
                break;
            }
            case 3:
            {
                sf::Vector2i mousePos = sf::Mouse::getPosition(window);
                tripad.update(mousePos);

                // window.clear();
                tripad.draw(window); // 绘制 Tripad
                break;
            }

        }
        

        window.display();
    }

    return 0;
}



// class Letter {
// public:
//     sf::Text text;
//     float speed;

//     Letter(sf::Font &font, float x, float y) {
//         text.setFont(font);
//         text.setString(static_cast<char>(rand() % 26 + 65)); // Random letter A-Z
//         text.setCharacterSize(24);
//         text.setFillColor(sf::Color::White);
//         text.setPosition(x, y);

//         speed = static_cast<float>(rand() % 5 + 2);
//     }

//     void fall() {
//         text.move(0, speed);
//     }
// };