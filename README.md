# ppx_demo
A demo repository to show off how to build an OCaml program from scratch with `ppx_deriving`.

## Setup

You will first need `dune` and `opam`. You can install these via your traditional
package manager, probably.

Next, you will need to install the `ppx_deriving` library. You can use `opam` to do this,
via 
```
opam install ppx_deriving
```

## Running

See `bin/main.ml` to see what the program is doing!

Simply run `dune build` to compile the project once you're ready, and then `dune run ppx_demo`
to run the program and see what it outputs.

Crucially, see that we had to change the `bin/dune` file to make this set-up work.
