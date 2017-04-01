#include <stdio.h>
#include <stdlib.h>
#include <cstdio>
#include <math.h>

#define RAD 0.01745

using namespace std;

FILE* read = NULL;
FILE* write = NULL;

int x = 0;
int y = 0;
int degree = 0;
int range = 0;
int range_a[2][142];//degree, range
int out[3][142];
int i = 0;
int x_c = 0;
int y_c = 0;

int main()
{
    //File open
    read = fopen("RANGDATA.txt", "r");
    if(read == NULL){
        printf("Read error");
        return 0;
    }

    //File read
    i = 0;
    fscanf(read, "%d:%d;\n", x_c, y_c);
    while(i < 142){
        fscanf(read, "%d", &range_a[0][i]);
        fscanf(read, ":%d;\n", &range_a[1][i]);
        i++;
    }
    i = 0;
    fclose(read);

    write = fopen("EUCLIDEAN.txt", "w");
    if(write == NULL){
        printf("Write error\n");
        return 0;
    }

    fscanf(write, "%d:%d;\n", x_c, y_c);

    //Point generation
    while(i < 71){
        if(range_a[1][i] < 200){
            range_a[0][i] = 71 - range_a[0][i];
            x = range_a[1][i] * sin(RAD * range_a[0][i]);
            y = range_a[1][i] * cos(RAD * range_a[0][i]);

            fprintf(write, "%d:%d:1;\n", x, y);
        }
        i++;
    }
    i = 0;

    fprintf(write, "200:%d:1;/n", range_a[1][71]);

    i = 72;
    while(i < 142){
        range_a[2][i] = range_a[2][i] - 71;
        x = range_a[3][i] * sin(RAD * range_a[2][i]);
        y = range_a[3][i] * cos(RAD * range_a[2][i]);
        fprintf(write, "%d:%d:1;\n", x, y);
        i++;
    }
    i = 0;

    fclose(write);
    return 0;
}
