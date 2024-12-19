//// Qualified imports: https://aiken-lang.org/language-tour/modules#qualified-imports
////
//// You can also use custom names like so:
//// ```aiken
//// use modules/functions as fun
//// ...
//// fun.add(1, 2) == 3 // True
//// ```
//// See: https://aiken-lang.org/language-tour/modules#custom-names

use modules/functions

test qualified_add() {
  and {
    functions.add(1, 2) == 3,
    functions.add(4, 4) == 8,
    functions.add(4, 5) == 9,
    functions.add(0, 6) == 6,
    functions.add(7, 0) == 7,
  }
}

test qualified_sub() {
  and {
    functions.sub(9, 0) == 9,
    functions.sub(8, 1) == 7,
    functions.sub(6, 2) == 4,
    functions.sub(3, 3) == 0,
    functions.sub(0, 0) == 0,
  }
}
