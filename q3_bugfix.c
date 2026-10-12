#include <stdio.h>
#include <stdlib.h>

// TODO: Fix the 3 logical/memory errors in this snippet
int createArray() {
    int arr[3] = {10, 20, 30};
    return arr;
}

int main() {
    int *ptr = (int*) malloc(5 * sizeof(int));
    *ptr = 100;
    
    int *data = createArray();
    printf("Value: %d\n", *data);
    
    return 0;
}
