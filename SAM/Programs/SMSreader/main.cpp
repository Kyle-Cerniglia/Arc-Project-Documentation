#include <stdio.h>
#include <cstring>

using namespace std;

FILE* sms = NULL;
char read[160];
int i = 0;
char lat[10];
char lat_s;
char lon[10];
char lon_s;
int data[122];
char hold;
int data_2d[11][11];
int x = 0;
int y = 0;

void hex();

int main()
{
    sms = fopen("sms.txt", "r");
    if(sms == NULL){
        return -1;
    }
    /*
    while(!feof(sms)){
        fscanf(sms, " %c", &read[i]);
        i++;
    }
    i = 0;
    while(i < 160){
        printf("%c", read[i]);
        i++;
    }
    */
    fscanf(sms, " %c", &lat_s);
    if(lat_s == '+'){
        lat_s = 'N';
    }
    else{
        lat_s = 'S';
    }
    while(i < 3){
        fscanf(sms, " %c", &lat[i]);
        i++;
    }
    lat[i] = '.';
    i++;
    while(i < 9){
        fscanf(sms, " %c", &lat[i]);
        i++;
    }
    i = 0;
    fscanf(sms, " %c", &lon_s);
    if(lon_s == '+'){
        lon_s = 'E';
    }
    else{
        lon_s = 'W';
    }
    while(i < 3){
        fscanf(sms, " %c", &lon[i]);
        i++;
    }
    lon[i] = '.';
    i++;
    while(i < 9){
        fscanf(sms, " %c", &lon[i]);
        i++;
    }
    i = 0;
    while(!feof(sms)){
        fscanf(sms, " %c", &hold);
        hex();
        i++;
    }

    //axes
    i = 0;
    x = 5;
    y = 5;
    //+y
    while(y > -1){
        data_2d[x][y] = data[i];
        i++;
        y--;
    }
    x = 6;
    y = 5;
    //+x
    while(x < 11){
        data_2d[x][y] = data[i];
        i++;
        x++;
    }
    x = 4;
    y = 5;
    //-x
    while(x > -1){
        data_2d[x][y] = data[i];
        i++;
        x--;
    }
    x = 5;
    y = 6;
    //-y
    while(y < 11){
        data_2d[x][y] = data[i];
        i++;
        y++;
    }
    //Q1
    x = 6;
    y = 4;
    while(x < 11){
        while(y > -1){
            data_2d[x][y] = data[i];
            y--;
            i++;
        }
        y = 4;
        x++;
    }

    //Q2
    x = 4;
    y = 4;
    while(x > -1){
        while(y > -1){
            data_2d[x][y] = data[i];
            y--;
            i++;
        }
        y = 4;
        x--;
    }

    //Q3
    x = 4;
    y = 6;
    while(x > -1){
        while(y < 11){
            data_2d[x][y] = data[i];
            y++;
            i++;
        }
        y = 6;
        x--;
    }

    //Q4
    x = 6;
    y = 6;
    while(x < 11){
        while(y < 11){
            data_2d[x][y] = data[i];
            y++;
            i++;
        }
        y = 6;
        x++;
    }

    printf("%c %s\n%c %s\n", lat_s, lat, lon_s, lon);
    /*
    i = 0;
    while(i < 122){
        printf("%d ", data[i]);
        i++;
    }
    */
    x = 0;
    y = 0;
    while(y < 11){
        while(x < 11){
            printf(" %2d", data_2d[x][y]);
            x++;
        }
        printf("\n");
        x = 0;
        y++;
    }

    fclose(sms);
    return 0;
}

void hex(){
    switch(hold){
        case '0':
            data[i] = 0;
            break;

        case '1':
            data[i] = 1;
            break;

        case '2':
            data[i] = 2;
            break;

        case '3':
            data[i] = 3;
            break;

        case '4':
            data[i] = 4;
            break;

        case '5':
            data[i] = 5;
            break;

        case '6':
            data[i] = 6;
            break;

        case '7':
            data[i] = 7;
            break;

        case '8':
            data[i] = 8;
            break;

        case '9':
            data[i] = 9;
            break;

        case 'a':
            data[i] = 10;
            break;

        case 'b':
            data[i] = 11;
            break;

        case 'c':
            data[i] = 12;
            break;

        case 'd':
            data[i] = 13;
            break;

        case 'e':
            data[i] = 14;
            break;

        case 'f':
            data[i] = 15;
            break;

        default:
            data[i] = -1;
            break;
    }
    return;
}
