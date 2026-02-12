# the_lean_adventure
For adventuring in Lean.

To install:

  wget https://github.com/leanprover/lean4/releases/download/v4.27.0/lean-4.27.0-darwin_aarch64.tar.zst
  tar --use-compress-program=unzstd -xvf lean-4.27.0-darwin_aarch64.tar.zst

`Note:` Obviously alias these commands appropriately. I just wrote the directory path directly.

To run:

  ./lean-4.27.0-darwin_aarch64/bin/lean --run hello_world.lean

To Convert to c:

  ./lean-4.27.0-darwin_aarch64/bin/lean hello_world.lean -c hello.c

To get the binary from c:

  ./lean-4.27.0-darwin_aarch64/bin/leanc hello.c -o hello

Formatting and highlighting:

  I prefer using vanilla vim, so check out my .vim config for syntax highlighting and symbols.

  .vim/syntax

  .vim/ftdetect

