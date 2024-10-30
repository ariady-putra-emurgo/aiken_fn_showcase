//// Anonymous functions: https://aiken-lang.org/language-tour/functions#anonymous-functions

use aiken/builtin
use aiken/collection/list

test higher_order_functions() {
  let is_even =
    fn(x) { x % 2 == 0 }

  let is_world =
    fn(x) { x == "World" }

  and {
    // all even?
    list.all([2, 4, 6], is_even),
    // any "World"?
    list.any(["Hello", "World"], is_world),
    // count False:
    list.count([True, False, True], fn(x) { !x }) == 1,
    // find ("NFT", 1):
    list.find(
      [("Token", 300), ("FT", 20), ("NFT", 1)],
      fn((asset_name, qty)) { asset_name == "NFT" && qty == 1 },
    ) == Some(("NFT", 1)),
  }
}

pub fn hof1(x: Int, f: fn(Int) -> ByteArray) -> ByteArray {
  f(x)
}

pub fn hof2(y: Int) -> fn(ByteArray) -> Bool {
  fn(z) { z == builtin.integer_to_bytearray(True, 0, y) }
}

test hofs_test() {
  and {
    hof1(256, fn(x) { builtin.integer_to_bytearray(True, 0, x) }) == #"0100",
    hof2(256)(#"0100"),
  }
}
//
// pub type Processor<x> {
//   run_process: fn(x) -> x, // non-serialisable
// }
//
