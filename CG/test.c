#include <abt.h>

int main(int argc, char **argv) {
  ABT_init(argc, argv);
  ABT_finalize();
  return 0;
}