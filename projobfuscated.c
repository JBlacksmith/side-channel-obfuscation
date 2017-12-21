//#include <stdio.h>
//#include <stdlib.h>



char operation(char input)
    {
        char key = 0b00100110;
        char val;
        char rand;
        rand = 0x26;
        key = rand + key - 0x26;
        val = input ^ key;
        rand = (rand || key); 
        return val;
    }

//int main(){
//	
//}
