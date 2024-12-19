//// Backpassing: https://aiken-lang.org/language-tour/functions#backpassing-

use aiken/builtin
use anonymous_functions.{hof1}

test backpassing() {
  #"0100" == {
    let x <- hof1(256)
    builtin.integer_to_bytearray(True, 0, x)
  }
}
