#import <Foundation/Foundation.h>

int main(){
  printf("Choose operation:\n1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Quit\n");
  char* input[10];
  scanf("%s", *input);
  NSString* operator =[NSString stringWithCString:cstring encoding:1];
  NSLog(@"%@", operator);

}
