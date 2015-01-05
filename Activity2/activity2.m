#import <Foundation/Foundation.h>

int main(){
  int input = 0;
  int total = 0;
  int count = 0;

  printf("Please enter a number: \n");
  scanf("%d", &input);

  while(input >= 0){
    if(input > 100){
      printf("Input must be less than 100!\n");
      input = 0; 
      count--;
    }
    total += input;
    count++;
    printf("Please enter a number: \n");
    scanf("%d", &input);
  }

  double average = (double)total/(double)count;
  printf("The average is: %f\n", average);
}
