#include <stdio.h>
#include <stdlib.h>
#include <cstdio>
#include <math.h>

using namespace std;

FILE* read = NULL;
FILE* write = NULL;

int cnt = 0;
int x = 0;
int y = 0;

int x_t = 0;
int y_t = 0;
int val_t = 0;

int photogrid[400][200];

int main()
{
    read = fopen("EUCLIDEAN.txt", "r");
    if(read == NULL){
        printf("Read error\n");
        return 0;
    }

    write = fopen("SORTED.txt", "w");
    if(write == NULL){
        printf("Write error\n");
        return 0;
    }


    while(cnt < 80000){
        fscanf(read, "%d", &x_t);
        fscanf(read, ":%d", &y_t);
        fscanf(read, ":%d;\n", &val_t);

        if(x_t == x && y_t == y){
            fprintf(write, "%d:", x_t);
            fprintf(write, "%d:", y_t);
            fprintf(write, "%d;\n", val_t);
            fseek(write, 0, SEEK_SET);
            cnt++;
        }

    }

    fclose(read);
    fclose(write);

    return 0;
}
