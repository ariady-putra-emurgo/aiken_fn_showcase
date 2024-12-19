//// Piping: https://aiken-lang.org/language-tour/control-flow#piping

use aiken/collection/list

fn is_even(x) {
  x % 2 == 0
}

fn is_odd(x) {
  x % 2 == 1
}

fn increment(x) {
  x + 1
}

test without_piping() {
  list.all(list.map(list.filter(list.range(0, 9), is_even), increment), is_odd)
}

test with_piping() {
  list.range(0, 9)
    |> list.filter(is_even)
    |> list.map(increment)
    |> list.all(is_odd)
}
