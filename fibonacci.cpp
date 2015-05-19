#include <stdlib.h>
#include <iostream>
int fibonacci(int n) {
	if(n == 1)
		return 1;
	else if(n == 0)
		return 0;
	else
		return fibonacci(n-1) + fibonacci(n-2);
}

int main() {
	int x = fibonacci(10);
	std::cout << x ;
}


