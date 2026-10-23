#include "types.h"
#include "user.h"

int main()
{
    printf(1, "total amount of times processes called read(): %d\n", getreadcount());
    exit();
}
