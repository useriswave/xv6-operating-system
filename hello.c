#include "types.h"
#include "user.h"

int main(int argc, char* argv[])
{
    switch (argc) {
    case 1: printf(1, "Hello World\n"); break;
    case 2: printf(1, "Hello There, %s!\n", argv[1]); break;
    default: printf(2, "Invalid arguments. Usage: ./hello OR ./hello <name>\n");
    }

    exit();
}
