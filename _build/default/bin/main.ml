
(* a basic tree type *)
type t = Empty | Node of t * int * t


(* but what if we want to print it? then we do sad things :( *)
let rec show_tree = function
  | Empty -> "Empty"
  | Node (l, x, r) -> 
      Printf.sprintf "Node (%s, %d, %s)" 
        (show_tree l) x (show_tree r) 


(* this prints correctly, but at what cost? gross... *)
let t = (Node (Empty, 1, Empty))
let _ = print_endline (Printf.sprintf "Got tree: %s" (show_tree t))


(* a basic tree type, but this time "deriving" a show
   function!
 *)
type derived_t = Empty | Node of derived_t * int * derived_t [@@deriving show]

let t = (Node (Empty, 2, Empty))
let _ = print_endline (Printf.sprintf "Got tree: %s" (show_derived_t t))
let t = (Node (Empty, 3, Empty))
let _ = print_endline (Printf.sprintf "Also got tree: %s" ([%show: derived_t] t))

(* don't like the module thing in front of it though, so let's try again: *)
type derived_t2 = 
    Empty 
  | Node of derived_t2 * int * derived_t2 [@@deriving show { with_path = false }]

let t = (Node (Empty, 2, Empty))
let _ = print_endline (Printf.sprintf "Got tree: %s" (show_derived_t2 t))
let t = (Node (Empty, 3, Empty))
let _ = print_endline (Printf.sprintf "Also got tree: %s" ([%show: derived_t2] t))


