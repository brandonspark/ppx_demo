# ppx_demo
A demo repository to show off how to build an OCaml program from scratch with `ppx_deriving`.

See `bin/main.ml` to see what the program is doing!

Simply run `dune build` to compile the project once you're ready, and then `dune run ppx_demo`
to run the program and see what it outputs.

Crucially, see that we had to change the `bin/dune` file to make this set-up work.
