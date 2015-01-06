#import <Foundation/Foundation.h>

typedef struct BankCustomer  {
  NSString* name;
  int accountNum;
  float curBalance;
} Customer;

void swap(int* x, int* y) {
  int temp = *x;
  *x = *y;
  *y = temp;
}

int main()  {
  int star = 77;
  int* location = &star;

  printf("Location of %d = %p\n", star, location);
  printf("Value at address %p = %d\n", location, *location);

  int x = 5;
  int y = 10;

  swap(&x, &y);

  printf("x:%d y:%d", x, y);

  return 0;
}
