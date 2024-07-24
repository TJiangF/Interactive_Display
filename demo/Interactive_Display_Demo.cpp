#include <SFML\Graphics.hpp>
#include "CYdLidar.h"
#include <vector>
#include <cstdlib>
#include <ctime>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <time.h>
#include <string>
#include <cctype>
#include <chrono>
#include <queue>
#include <set>
using namespace ydlidar;
// default window size
#define windowH 900
#define windowW 1600
#define LidarFreshTime 83
#define WindowRefreshRate 60

float rangeThreshold = 2.0;  
int rotationAngle = -87;  
float distanceToAbove = 0.22;  
float displayHeight = 0.72;  
float displayWidth = 1.5;  

std::vector<std::string> options = {
    "Rotate", "Range_Threshold", "Distance to above", "Display Height", "Display Width", "Confirm"
};
int currentOption = 0;  

#if defined(_MSC_VER)
#pragma comment(lib, "ydlidar_sdk.lib")
#endif

class ScanPoint {
public:
    double x;
    double y;
    ScanPoint(double x_, double y_) : x(x_), y(y_) {}
};

class PointCloudRecognition {
public:
    std::vector<ScanPoint> findLongestCluster(const std::vector<ScanPoint>& points, int k) {
        if (points.size() < k) return points;

        std::vector<ScanPoint> centroids = initializeCentroids(points, k);
        std::vector<int> assignments(points.size());
        bool changed = true;

        while (changed) {
            changed = false;

            // Assign points to the nearest centroid
            for (size_t i = 0; i < points.size(); ++i) {
                int bestCluster = 0;
                double bestDistance = distance(points[i], centroids[0]);
                for (int j = 1; j < k; ++j) {
                    double d = distance(points[i], centroids[j]);
                    if (d < bestDistance) {
                        bestDistance = d;
                        bestCluster = j;
                    }
                }
                if (assignments[i] != bestCluster) {
                    assignments[i] = bestCluster;
                    changed = true;
                }
            }

            // Update centroids
            for (int j = 0; j < k; ++j) {
                double sumX = 0, sumY = 0;
                int count = 0;
                for (size_t i = 0; i < points.size(); ++i) {
                    if (assignments[i] == j) {
                        sumX += points[i].x;
                        sumY += points[i].y;
                        ++count;
                    }
                }
                if (count > 0) {
                    centroids[j] = ScanPoint(sumX / count, sumY / count);
                }
            }
        }

        // Find the largest cluster
        std::vector<int> clusterSizes(k, 0);
        for (int assignment : assignments) {
            ++clusterSizes[assignment];
        }

        int largestCluster = std::distance(clusterSizes.begin(), std::max_element(clusterSizes.begin(), clusterSizes.end()));
        std::vector<ScanPoint> longestCluster;
        for (size_t i = 0; i < points.size(); ++i) {
            if (assignments[i] == largestCluster) {
                longestCluster.push_back(points[i]);
            }
        }

        return longestCluster;
    }

    ScanPoint computeCentroid(const std::vector<ScanPoint>& points) {
        double sumX = 0, sumY = 0;
        for (const auto& point : points) {
            sumX += point.x;
            sumY += point.y;
        }
        return ScanPoint(sumX / points.size(), sumY / points.size());
    }

private:
    std::vector<ScanPoint> initializeCentroids(const std::vector<ScanPoint>& points, int k) {
        std::vector<ScanPoint> centroids;
        std::srand(std::time(0));
        for (int i = 0; i < k; ++i) {
            int index = std::rand() % points.size();
            centroids.push_back(points[index]);
        }
        return centroids;
    }

    double distance(const ScanPoint& a, const ScanPoint& b) {
        return std::sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
    }
};


//Scene 0
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
//Scene 1
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

    void update(sf::Vector2i PointerPos, sf::Vector2u windowSize) {
        lines.clear();

        if (PointerPos.x >= 0 && PointerPos.y >= 0) {
            // 从鼠标位置到窗口四角创建分段线条
            createSegmentedLines(sf::Vector2f(PointerPos), sf::Vector2f(0, 0));                       // 左上角
            createSegmentedLines(sf::Vector2f(PointerPos), sf::Vector2f(windowSize.x, 0));            // 右上角
            createSegmentedLines(sf::Vector2f(PointerPos), sf::Vector2f(0, windowSize.y));            // 左下角
            createSegmentedLines(sf::Vector2f(PointerPos), sf::Vector2f(windowSize.x, windowSize.y)); // 右下角
        }
    }

    void draw(sf::RenderWindow& window) {
        for (auto& line : lines) {
            window.draw(line);
        }
    }
};
//Scene 2
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

    void update(sf::Vector2i PointerPos) {
        sf::Vector2f mousePosition(PointerPos);
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
//Scene 3
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

    void update(sf::Vector2i PointerPos) {
        for (auto& triangle : triangles) {
            if (triangle.getGlobalBounds().contains(PointerPos.x, PointerPos.y)) {
                triangle.setFillColor(sf::Color::White);
            }
        }
    }

    void draw(sf::RenderWindow& window) {
        for (auto& triangle : triangles) {
            window.draw(triangle);
        }
    }

    void reset(){
        std::vector<sf::ConvexShape>().swap(triangles);
    }
};



void displayText(sf::RenderWindow& window, sf::Text& text, const std::string& message) {
    text.setString(message);
    window.clear();
    window.draw(text);
    window.display();
}
std::string getUserInput(sf::RenderWindow& window, sf::Text& text, const std::string& prompt) {
    std::string userInput;
    displayText(window, text, prompt);
    sf::Event event;
    while (window.isOpen()) {
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
                return "";
            }
            if (event.type == sf::Event::TextEntered) {
                if (event.text.unicode == '\b') {
                    if (!userInput.empty()) {
                        userInput.pop_back();
                    }
                } else if (event.text.unicode == '\r') {
                    return userInput;
                } else if (event.text.unicode < 128) {
                    userInput += static_cast<char>(event.text.unicode);
                }
                displayText(window, text, prompt + userInput);
            }
        }
    }
    return userInput;
}




int main(int argc, char *argv[]) {

    sf::RenderWindow window(sf::VideoMode(windowW, windowH), "Interactive Display", sf::Style::Close | sf::Style::Resize);
    window.setFramerateLimit(WindowRefreshRate); // fps
    sf::View view = window.getDefaultView();

    sf::Font font;
    if (!font.loadFromFile("C:\\Windows\\Fonts\\consola.ttf")) {
        // use fonts that have same intervals between letters
        std::cerr << "Error loading font\n";
        return -1;
    }

    std::string initText =
        " ___  ________   _________  _______   ________  ________  ________ _________  ___  ___      ___ _______      \n"
        "|\\  \\|\\   ___  \\|\\___   ___\\\\  ___ \\ |\\   __  \\|\\   __  \\|\\   ____\\\\___   ___\\\\  \\|\\  \\    /  /|\\  ___ \\     \n"
        "\\ \\  \\ \\  \\\\ \\  \\|___ \\  \\_\\ \\   __/|\\ \\  \\|\\  \\ \\  \\|\\  \\ \\  \\___\\|___ \\  \\_\\ \\  \\ \\  \\  /  / | \\   __/|    \n"
        " \\ \\  \\ \\  \\\\ \\  \\   \\ \\  \\ \\ \\  \\_|/_\\ \\   _  _\\ \\   __  \\ \\  \\       \\ \\  \\ \\ \\  \\ \\  \\/  / / \\ \\  \\_|/__  \n"
        "  \\ \\  \\ \\  \\\\ \\  \\   \\ \\  \\ \\ \\  \\_|\\ \\ \\  \\\\  \\\\ \\  \\ \\  \\ \\  \\____   \\ \\  \\ \\ \\  \\ \\    / /   \\ \\  \\_|\\ \\ \n"
        "   \\ \\__\\ \\__\\\\ \\__\\   \\ \\__\\ \\ \\_______\\ \\__\\\\ _\\\\ \\__\\ \\__\\ \\_______\\  \\ \\__\\ \\ \\__\\ \\__/ /     \\ \\_______\\\n"
        "    \\|__|\\|__| \\|__|    \\|__|  \\|_______|\\|__|\\|__|\\|__|\\|__|\\|_______|   \\|__|  \\|__|\\|__|/       \\|_______|\n"
        "                                                                                                             \n"
        "                                                                                                             \n"
        "                                                                                                             \n"
        " ________  ___  ________  ________  ___       ________      ___    ___                                       \n"
        "|\\   ___ \\|\\  \\|\\   ____\\|\\   __  \\|\\  \\     |\\   __  \\    |\\  \\  /  /|                                      \n"
        "\\ \\  \\_|\\ \\ \\  \\ \\  \\___|\\ \\  \\|\\  \\ \\  \\    \\ \\  \\|\\  \\   \\ \\  \\/  / /                                      \n"
        " \\ \\  \\ \\\\ \\ \\  \\ \\_____  \\ \\   ____\\ \\  \\    \\ \\   __  \\   \\ \\    / /                                       \n"
        "  \\ \\  \\_\\\\ \\ \\  \\|____|\\  \\ \\  \\___|\\ \\  \\____\\ \\  \\ \\  \\   \\/  /  /                                        \n"
        "   \\ \\_______\\ \\__\\____\\_\\  \\ \\__\\    \\ \\_______\\ \\__\\ \\__\\__/  / /                                          \n"
        "    \\|_______|\\|__|\\_________\\|__|     \\|_______|\\|__|\\|__|\\___/ /                                           \n"
        "                  \\|_________|                            \\|___|/                                            \n";



    sf::Text text(initText, font, 20);
    text.setFillColor(sf::Color::White);
    text.setPosition(10, 10);

    displayText(window, text, initText);

    ydlidar::os_init();
    std::map<std::string, std::string> ports = ydlidar::lidarPortList();
    std::string port;
    std::map<std::string, std::string>::iterator it;

    if (ports.size() == 1) {
        port = ports.begin()->second;
    } else {
        int id = 0;
        for (it = ports.begin(); it != ports.end(); it++) {
            initText += std::to_string(id) + ". " + it->first + "\n";
            id++;
        }

        if (ports.empty()) {
            initText += "No Lidar detected. Please enter the lidar serial port:";
            port = getUserInput(window, text, initText);
        } else {
            while (ydlidar::os_isOk()) {
                std::string number = getUserInput(window, text, "Please select the lidar port: ");
                if ((size_t)atoi(number.c_str()) >= ports.size()) {
                    continue;
                }

                it = ports.begin();
                id = atoi(number.c_str());

                while (id) {
                    id--;
                    it++;
                }

                port = it->second;
                break;
            }
        }
    }

    int baudrate = 115200;
    if (!ydlidar::os_isOk()) {
        return 0;
    }

    bool isSingleChannel = true;// one way communication

    if (!ydlidar::os_isOk()) {
        return 0;
    }

    std::string input_frequency;
    float frequency = 12.0;

    if (!ydlidar::os_isOk()) {
        return 0;
    }


  CYdLidar laser;
  //////////////////////string property/////////////////
  /// lidar port
  laser.setlidaropt(LidarPropSerialPort, port.c_str(), port.size());
  /// ignore array
  std::string ignore_array;
  ignore_array.clear();
  laser.setlidaropt(LidarPropIgnoreArray, ignore_array.c_str(),
                    ignore_array.size());

  //////////////////////int property/////////////////
  /// lidar baudrate
  laser.setlidaropt(LidarPropSerialBaudrate, &baudrate, sizeof(int));
  /// tof lidar
  int optval = TYPE_TRIANGLE;
  laser.setlidaropt(LidarPropLidarType, &optval, sizeof(int));
  /// device type
  optval = YDLIDAR_TYPE_SERIAL;
  laser.setlidaropt(LidarPropDeviceType, &optval, sizeof(int));
  /// sample rate
  optval = isSingleChannel ? 3 : 4;
  laser.setlidaropt(LidarPropSampleRate, &optval, sizeof(int));
  /// abnormal count
  optval = 4;
  laser.setlidaropt(LidarPropAbnormalCheckCount, &optval, sizeof(int));

  //////////////////////bool property/////////////////
  /// fixed angle resolution
  bool b_optvalue = false;
  laser.setlidaropt(LidarPropFixedResolution, &b_optvalue, sizeof(bool));
  /// rotate 180
  laser.setlidaropt(LidarPropReversion, &b_optvalue, sizeof(bool));
  /// Counterclockwise
  laser.setlidaropt(LidarPropInverted, &b_optvalue, sizeof(bool));
  b_optvalue = true;
  laser.setlidaropt(LidarPropAutoReconnect, &b_optvalue, sizeof(bool));
  /// one-way communication
  laser.setlidaropt(LidarPropSingleChannel, &isSingleChannel, sizeof(bool));
  /// intensity
  b_optvalue = false;
  laser.setlidaropt(LidarPropIntenstiy, &b_optvalue, sizeof(bool));
  /// Motor DTR
  b_optvalue = true;
  laser.setlidaropt(LidarPropSupportMotorDtrCtrl, &b_optvalue, sizeof(bool));
  /// HeartBeat
  b_optvalue = false;
  laser.setlidaropt(LidarPropSupportHeartBeat, &b_optvalue, sizeof(bool));

  //////////////////////float property/////////////////
  /// unit: °
  float f_optvalue = 180.0f;
  laser.setlidaropt(LidarPropMaxAngle, &f_optvalue, sizeof(float));
  f_optvalue = -180.0f;
  laser.setlidaropt(LidarPropMinAngle, &f_optvalue, sizeof(float));
  /// unit: m
  f_optvalue = 64.f;
  laser.setlidaropt(LidarPropMaxRange, &f_optvalue, sizeof(float));
  f_optvalue = 0.05f;
  laser.setlidaropt(LidarPropMinRange, &f_optvalue, sizeof(float));
  /// unit: Hz
  laser.setlidaropt(LidarPropScanFrequency, &frequency, sizeof(float));

  bool ret = laser.initialize();

  if (ret) {
    ret = laser.turnOn();
  } else {
    fprintf(stderr, "%s\n", laser.DescribeError());
    fflush(stderr);
  }

    LaserScan scan;



    auto lastUpdateTime = std::chrono::steady_clock::now();
    std::chrono::milliseconds updateInterval(LidarFreshTime); // 每秒读取12次


    sf::Text optionText;
    optionText.setFont(font);
    optionText.setCharacterSize(20);
    optionText.setFillColor(sf::Color::White);
    sf::CircleShape triangle(5, 3);  // 三角形指示器
    triangle.setFillColor(sf::Color::Yellow);
    triangle.setRotation(90);  // 旋转使其指向右


    PointCloudRecognition recognizer;
    std::vector<ScanPoint> pointsInRange;
    bool demoMode = false;
    float boxCenterX = window.getSize().x / 2;
    float boxCenterY = window.getSize().y / 2;
    
    sf::RectangleShape blueBox(sf::Vector2f(displayWidth * window.getSize().y / 5, displayHeight * window.getSize().y / 5));
    while (ret && ydlidar::os_isOk() && !demoMode) {
        auto currentTime = std::chrono::steady_clock::now();
        std::chrono::duration<double> elapsedTime = currentTime - lastUpdateTime;

        if (elapsedTime >= updateInterval) {
            LaserScan scan;
            if (laser.doProcessSimple(scan)) {
                window.clear();

                // 绘制蓝色方框
                sf::RectangleShape blueBox(sf::Vector2f(displayWidth * window.getSize().y / 5, displayHeight * window.getSize().y / 5));
                boxCenterX = window.getSize().x / 2;
                boxCenterY = window.getSize().y / 2 - (distanceToAbove + displayHeight / 2) * window.getSize().y / 5;
                blueBox.setFillColor(sf::Color::Transparent);
                blueBox.setOutlineThickness(1);
                blueBox.setOutlineColor(sf::Color::Blue);
                blueBox.setPosition(boxCenterX - blueBox.getSize().x / 2, boxCenterY - blueBox.getSize().y / 2);
                window.draw(blueBox);


                // 绘制激光雷达点云
                for (const auto& point : scan.points) {
                    double angle = point.angle + rotationAngle * M_PI / 180.0;  // 应用旋转
                    double x = point.range * cos(angle) * window.getSize().y / 5;  // 缩放以适应窗口
                    double y = point.range * sin(angle) * window.getSize().y / 5;

                    sf::CircleShape circle(1);

                    if((window.getSize().x / 2 - x) >= (boxCenterX - blueBox.getSize().x / 2) && (window.getSize().x / 2 - x) <= (boxCenterX + blueBox.getSize().x / 2) && (window.getSize().y / 2 + y) >= (boxCenterY - blueBox.getSize().y / 2) && (window.getSize().y / 2 + y) <= (boxCenterY + blueBox.getSize().y / 2))
                    {
                        circle.setFillColor(sf::Color::Green);
                        // pointcloud recognition
                        pointsInRange.emplace_back(window.getSize().x / 2 - x, window.getSize().y / 2 + y);
                        
                    }else{
                        circle.setFillColor(sf::Color::White);
                    }
                    
                    circle.setPosition(window.getSize().x / 2 - x, window.getSize().y / 2 + y);  // 窗口中心
                    window.draw(circle);
                }

                if (!pointsInRange.empty()) {
                    auto longestCluster = recognizer.findLongestCluster(pointsInRange, 3);
                    ScanPoint centroid = recognizer.computeCentroid(longestCluster);
                    for (const auto& point : longestCluster) {
                        sf::CircleShape clusterPoint(3);
                        clusterPoint.setFillColor(sf::Color::Blue);
                        clusterPoint.setPosition(point.x, point.y);
                        window.draw(clusterPoint);
                    }
                    sf::CircleShape centroidMarker(5, 3);
                    centroidMarker.setFillColor(sf::Color::Yellow);
                    centroidMarker.setPosition(centroid.x - centroidMarker.getRadius(), centroid.y - centroidMarker.getRadius());
                    window.draw(centroidMarker);
                    std::vector<ScanPoint>().swap(pointsInRange); //clear out the current vector
                }


                // 绘制中点
                sf::CircleShape middleCircle(5);
                middleCircle.setFillColor(sf::Color::Red);
                middleCircle.setPosition(window.getSize().x / 2, window.getSize().y / 2);  // 窗口中心
                window.draw(middleCircle);

                sf::CircleShape rangeCircle(rangeThreshold * window.getSize().y / 5);
                rangeCircle.setFillColor(sf::Color::Transparent);
                rangeCircle.setOutlineThickness(1);
                rangeCircle.setOutlineColor(sf::Color::Red);
                rangeCircle.setPosition(window.getSize().x / 2 - rangeCircle.getRadius(), window.getSize().y / 2 - rangeCircle.getRadius());
                window.draw(rangeCircle);




                // 显示选项列表和当前值
                std::vector<std::string> values = {
                    "Rotate: " + std::to_string(rotationAngle),
                    "Range_Threshold: " + std::to_string(rangeThreshold),
                    "Distance to above: " + std::to_string(distanceToAbove),
                    "Display Height: " + std::to_string(displayHeight),
                    "Display Width: " + std::to_string(displayWidth),
                    "Confirm"
                };

                for (size_t i = 0; i < options.size(); ++i) {
                    optionText.setString(values[i]);
                    optionText.setPosition(30, window.getSize().y - 150 + i * 25);
                    window.draw(optionText);

                    if (i == currentOption) {
                        triangle.setPosition(15, window.getSize().y - 150 + i * 25 + 10);
                        window.draw(triangle);
                    }
                }

                window.display();
            } else {
                fprintf(stderr, "Failed to get Lidar Data\n");
                fflush(stderr);
            }
            lastUpdateTime = currentTime;
        }

        sf::Event event;
            while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            } else if (event.type == sf::Event::KeyPressed) {
                if (!demoMode) {
                    if (event.key.code == sf::Keyboard::Up) {
                        currentOption = (currentOption - 1 + options.size()) % options.size();
                    } else if (event.key.code == sf::Keyboard::Down) {
                        currentOption = (currentOption + 1) % options.size();
                    } else if (event.key.code == sf::Keyboard::Left) {
                        switch (currentOption) {
                            case 0: rotationAngle -= 1; break;
                            case 1: rangeThreshold = std::max(0.0f, rangeThreshold - 0.1f); break;
                            case 2: distanceToAbove = std::max(-2.0f, distanceToAbove - 0.02f); break;
                            case 3: displayHeight = std::max(0.0f, displayHeight - 0.02f); break;
                            case 4: displayWidth = std::max(0.0f, displayWidth - 0.02f); break;
                            default: break;
                        }
                    } else if (event.key.code == sf::Keyboard::Right) {
                        switch (currentOption) {
                            case 0: rotationAngle += 1; break;
                            case 1: rangeThreshold = std::min(8.0f, rangeThreshold + 0.1f); break;
                            case 2: distanceToAbove = std::min(8.0f, distanceToAbove + 0.02f); break;
                            case 3: displayHeight += 0.02f; break;
                            case 4: displayWidth += 0.02f; break;
                            default: break;
                        }
                    } else if (event.key.code == sf::Keyboard::Enter && currentOption == 5) {
                        demoMode = true; // 切换到演示模式
                    }
                }
            }
        }
    }
    std::srand(static_cast<unsigned int>(std::time(nullptr)));
    std::vector<Lightning> lightnings;
    std::vector<Meteor> meteors;
    std::vector<Pointer> pointers;
    Laser lasers;
    Tripad tripad(window.getSize());


    // Display Switch
    int Mode = 0; // Start Mode indicator
    int ModeNum = 3; // Number of Modes
    bool first_enter = true;
    int ModeTime = 15; //Mode Switch Time
    sf::Clock ModeSwitchClock;
    double HandPosX = 0;
    double HandPosY = 0;
    while (ret && ydlidar::os_isOk() && demoMode) {
        auto currentTime = std::chrono::steady_clock::now();
        std::chrono::duration<double> elapsedTime = currentTime - lastUpdateTime;

        if (elapsedTime >= updateInterval) {
            LaserScan scan;
            if (laser.doProcessSimple(scan)) {
                for (const auto& point : scan.points) {
                    double angle = point.angle + rotationAngle * M_PI / 180.0;  // 应用旋转
                    double x = point.range * cos(angle) * window.getSize().y / 5;  // 缩放以适应窗口
                    double y = point.range * sin(angle) * window.getSize().y / 5;

                    if((window.getSize().x / 2 - x) >= (boxCenterX - blueBox.getSize().x / 2) && (window.getSize().x / 2 - x) <= (boxCenterX + blueBox.getSize().x / 2) && (window.getSize().y / 2 + y) >= (boxCenterY - blueBox.getSize().y / 2) && (window.getSize().y / 2 + y) <= (boxCenterY + blueBox.getSize().y / 2))
                    {
                        // pointcloud recognition
                        pointsInRange.emplace_back(window.getSize().x / 2 - x, window.getSize().y / 2 + y); 
                    }
                }

                if (!pointsInRange.empty()) {
                    auto longestCluster = recognizer.findLongestCluster(pointsInRange, 3);
                    ScanPoint centroid = recognizer.computeCentroid(longestCluster);
                    HandPosX = (centroid.x - (boxCenterX - blueBox.getSize().x / 2)) * window.getSize().x / blueBox.getSize().x;
                    HandPosY = (centroid.y - (boxCenterY - blueBox.getSize().y / 2)) * window.getSize().y / blueBox.getSize().y;
                    std::vector<ScanPoint>().swap(pointsInRange); //clear out the current vector
                }                 
            } else {
                fprintf(stderr, "Failed to get Lidar Data\n");
                fflush(stderr);
            }
            lastUpdateTime = currentTime;
        }
        sf::Event event;
        sf::Vector2i PointerPos(HandPosX, HandPosY);
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
 
        if (ModeSwitchClock.getElapsedTime().asSeconds() >= ModeTime) {
            Mode == ModeNum ? Mode = 0 : Mode++;
            std::cout << "Current Mode : " << Mode << std::endl;
            ModeSwitchClock.restart();
            // tripad.reset();

        }
        window.clear(sf::Color::Black);
        switch(Mode){
            case 0:
            {
            // Generate lightnings
                if (rand() % 10 < 3) {
                    for (int i = 0; i < 2; i++) {
                        float xOffset = static_cast<float>((rand() % 40) - 20);
                        lightnings.emplace_back(PointerPos.x + xOffset, window.getSize().y);
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
                    lasers.update(PointerPos, window.getSize());
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
                    // pointer.update(PointerPos, std::max(window.getSize().y, window.getSize().x));
                    pointer.update(PointerPos);
                    pointer.draw(window);
                }
                break;
            }
            case 3:
            {
                tripad.update(PointerPos);
                tripad.draw(window); // 绘制 Tripad
                break;
            }

        }
        

        window.display();
    }




  // laser.turnOff();
  // laser.disconnecting();


    return 0;
}
