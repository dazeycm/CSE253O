/* Author: Craig Dazey
Realized a little too late that you probably just wanted the user to put in a
number to select an operation. At least this was a learning experience! :)

Information on how to convert from charArray to NSString was found here:
https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/index.html#//apple_ref/occ/clm/NSString/stringWithCString:encoding:
and here:
http://stackoverflow.com/questions/3220823/using-scanf-with-nsstrings

To figure out how methods(messages) worked, I used:
http://blog.teamtreehouse.com/the-beginners-guide-to-objective-c-methods
*/
#import <Foundation/Foundation.h>

int main(){
  printf("Choose operation:\n1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Quit\n");
  char input[10];
  //scanf only works with primitive data types
  scanf("%s", input);
  NSString* operator = [NSString stringWithCString:input encoding:1];

  int firstNum, secondNum;
  printf("First Number: ");
  scanf("%d", &firstNum);
  printf("Second Number: ");
  scanf("%d", &secondNum);

  if([operator isEqualToString:@"Add"]) {
    printf("Sum: %d", firstNum + secondNum);
  } else if ([operator isEqualToString:@"Subtract"]) {
    printf("Difference: %d", firstNum - secondNum);
  } else if ([operator isEqualToString:@"Multiply"]) {
    printf("Product: %d", firstNum * secondNum);
  } else if ([operator isEqualToString:@"Divide"]) {
      //Can't divide by 0
      if(secondNum == 0)  {
        printf("You cannot divide by 0!");
        return 0;
      }
      printf("Quotient: %d", firstNum / secondNum);
  } else if ([operator isEqualToString:@"Quit"]) {
    return 0;
  } else  {
    printf("You didn't enter a valid operation");
  }

  return 0;

}
