#include "72cc.h"

int main(int argc, char **argv) {
  if (argc != 2) {
    error("%s: invalid number of arguments", argv[0]);
    return 1;
  }

  user_input = argv[1];
  token = tokenize();
  Node *node = program();

  codegen(node);
  
  return 0;
}
