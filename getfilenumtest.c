#include "types.h"
#include "user.h"

int main(int argc, char* argv[])
{
    if (argc < 2 || argc > 2) {
        printf(1, "Usage: getfilenumtest <pid>\n");
        exit();
    }

    int pid = atoi(argv[1]);
    int filenum = getfilenum(pid);

    if (filenum < 0) {
        printf(2, "Invalid PID.\n");
        exit();
    }

    printf(1, "The number of open files for process %d is: %d\n", pid, filenum);
    exit();
}
