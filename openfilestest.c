#include "types.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char* argv[])
{
    if (argc < 2 || argc > 2) {
        printf(1, "Usage: getfilenumtest <num_files_to_open>\nExample: getfilenumtest 3\t<-- opens 3 files for this process.\n");
        exit();
    }

    int n_files_to_open = atoi(argv[1]);
    for (int i = 0; i < n_files_to_open; ++i) {
        int fd = open("README.md", O_RDONLY);

        if (fd < 0) {
            printf(1, "Cannot open more files than the max limit of 16.\n");
            break;
        }
    }

    printf(1, "My PID: %d\n", getpid());
    printf(1, "The amount of open files I (pid = %d) have open is:\n", getpid());
    printf(1, "stdin + stdout + stderr + %d = %d open files.\n", n_files_to_open, getfilenum(getpid()));

    exit();
}
