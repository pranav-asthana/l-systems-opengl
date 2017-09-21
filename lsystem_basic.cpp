#include "Turtle.h"
#include <unistd.h>

#define WIDTH 800
#define HEIGHT 800

void drawPattern(string sentence)
{
    Turtle turtle;
    float angle = (PI / 180) * 22.5;

    turtle.translate(WIDTH/2, 0);

    int draw_num = 0;
    int trunk = 1; // To keep track when to stop tapering and start branch contraction
    for (int i = 0; i < sentence.length(); i++) {
        char current = sentence[i];

        if((i%2) == 0) {
            // turtle.changeColor();
            // turtle.reduceThickness();
        }

        if (current == 'F') {
            turtle.draw();
            if (draw_num++ % 5 == 0 && trunk) {
                turtle.setThickness(-1); // -1 corresponds to taper
            }
        } else if (current == '+') {
            turtle.rotate(-angle);
        } else if (current == '-') {
            turtle.rotate(angle);
        } else if (current == '[') {
            turtle.saveState();
            turtle.setThickness(0); // 0 corresponds to branch contraction
        } else if (current == ']') {
            turtle.restoreState();
            turtle.setThickness(0); // 0 corresponds to branch contraction
        } else if (current == 'X' && sentence[i + 1] != '[') {
            trunk = 0; // Stop tapering
            // turtle.changeColor();
            turtle.drawLeaf();
        }
    }
}

string generatedString;

void generateString(string sentence, int depth)
{
    if(depth == 0) {
        cout<<sentence;
        generatedString = sentence;
        return;
    }

    string nextSentence;

    for (int i = 0; i < sentence.length(); i++) {
        if (sentence[i] == 'X') {
            int choice = rand() % 3;
            if (choice == 0)
                nextSentence += "F-[[X]+X]+F[+FX]-X";
            else if (choice == 1)
                nextSentence += "F[+X][-X]FX";
            else
                nextSentence += "F[+X]F[-X]+X";
            continue;
        }
        if (sentence[i] == 'F') {
            nextSentence += "FF";
            continue;
        }
        nextSentence += sentence[i];
    }
    cout<<nextSentence<<depth<<endl;
    generateString(nextSentence, depth - 1);
}


int main()
{
    const int generations = 7;

    srand(time(NULL));

    // OpenGL initialisation code

    if(glfwInit() == false) {
        fprintf(stderr, "Error initializing GLFW\n");
        return -1;
    }

    GLFWwindow* window = glfwCreateWindow(WIDTH, HEIGHT, "IS F311 Computer Graphics Project", NULL, NULL);

    if(!window) {
        glfwTerminate();
        fprintf(stderr, "Error while creating a window\n");
        return -1;
    }

    glfwMakeContextCurrent(window);
    glViewport(0.0f, 0.0f, WIDTH, HEIGHT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, WIDTH, 0, HEIGHT, 0, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    // glClearColor(0.6, 0.6, 0.6, 1);
    glClear(GL_COLOR_BUFFER_BIT);
    glfwSwapInterval(0);

    string sentence = "X";
    int depth = 1;
    Turtle turtle;
    // generateString(sentence, 6);
    // Render loop for the OpenGL window. The scene is redrawn on every refresh.

    while (!glfwWindowShouldClose(window)) {
        glClear(GL_COLOR_BUFFER_BIT);
        if (depth < generations) {
            generateString(sentence, depth++);
        }
        drawPattern(generatedString);

        glfwSwapBuffers(window);
        glfwPollEvents();
        usleep(0.25 * 1e6);
        // sleep(1);
        // for (long long i = 0; i < 200000000; i++);
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
