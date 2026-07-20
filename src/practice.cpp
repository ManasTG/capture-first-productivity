#include <iostream>
using namespace std;

int add(int a, int b) {
    return(a+b);
}

int main() {

    int i = 0;
loopStart:
    if (i < 5) {
        cout << i << " ";
        i++;
        goto loopStart;
    }

    return 0;
}
