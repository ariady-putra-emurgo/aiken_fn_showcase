//// Unqualified imports: https://aiken-lang.org/language-tour/modules#unqualified-import
////
//// You may also combine unqualified imports with custom names as such:
//// ```aiken
//// use modules/functions.{add} as fun
//// ...
//// add(2, 3) == 5     // True
//// fun.sub(6, 5) == 1 // True
//// ```

use modules/functions.{add, sub}

test unqualified_add() {
  and {
    add(1, 2) == 3,
    add(4, 4) == 8,
    add(4, 5) == 9,
    add(0, 6) == 6,
    add(7, 0) == 7,
  }
}

test unqualified_sub() {
  and {
    sub(9, 0) == 9,
    sub(8, 1) == 7,
    sub(6, 2) == 4,
    sub(3, 3) == 0,
    sub(0, 0) == 0,
  }
}
