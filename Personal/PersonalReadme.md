# C++

## 1. Setting up cpp

### 1. Create CMakeLists.txt
```
cmake_minimum_required(VERSION 3.20)

project(capture-first-productivity LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)  # compilier
set(CMAKE_CXX_STANDARD_REQUIRED ON) # Standard is required

add_executable(capture-first-productivity src/main.cpp) # create executable named 'capture-first-productivity' using src/main.cpp file
```

### 2, Builds the cmake files in the folder build (one timer)
```bash
mkdir build

cd build

cmake ..
```

### 3. compliling
```bash
cmake --build .
```

### 4. Running 
```bash
./cpf
```

### 5. Combined
```bash
cmake --build . && ./cpf
``` 

### 6. changes in cmakelist.txt
```bash
rm -rf build
cmake -B build
```

## Syntax

### Pointer
```cpp
    int x = 5;
    int* ptr = &x;  // ptr is a the pointer location in the memory block

    cout << ptr;
```
### Reference
```cpp
    int y = 90;
    int& itIsaReference = y;    // reference are used a temperory variable and can be assigned another var anyime

    cout << itIsaReference;
```

### Ternary Operator
```cpp

    int a = 5;
    cout << (a == 5 ? "It is dammed 5" : "It is not dammed 5") << endl;

```
### Switch
```cpp
    int a = 5;
    switch (a) {
    case 1:
        cout << "a is about 1";
        break;
    case 13:
        cout << "a is about 13";
        break;

    case 5:
        cout << "a is 5";
        break;
    default:
        cout << "a is not in the list";
        break;
    }
```

### goto function
```cpp
    int i = 0;
loopStart:
    if (i < 5) {
        cout << i << " ";
        i++;
        goto loopStart;
    }
```

