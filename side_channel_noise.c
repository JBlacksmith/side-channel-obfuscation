#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ARRAY_SIZE 13
#define EXPECTED_NUM_RV 2
static int noise_array[ARRAY_SIZE] = {0};
static char key=0x26;
static volatile int val;
void init_operation()
{
	srand (time(0));
    int i;
	for( i=0; i<ARRAY_SIZE; i++ )
		noise_array[i]=rand();
}

char operation(char input)
{
	do{
		noise_array[rand()%ARRAY_SIZE]=rand();
	}while( noise_array[rand()%ARRAY_SIZE]%EXPECTED_NUM_RV != 0);
        val = input ^ key;
	do{
		noise_array[rand()%ARRAY_SIZE]=rand();
	}while( noise_array[rand()%ARRAY_SIZE]%EXPECTED_NUM_RV != 0);
        return val;
    }

