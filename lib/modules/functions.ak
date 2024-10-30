// ## Private functions

fn increment(i: Int) -> Int {
  i + 1
}

fn decrement(i: Int) {
  i - 1
}

fn square(i) {
  i * i
}

// ## Public functions

pub fn increments(i: Int, step: Int) {
  when step is {
    0 -> i
    _ -> increments(increment(i), step - 1)
  }
}

pub fn decrements(i: Int, step: Int) {
  when step is {
    0 -> i
    _ -> decrements(decrement(i), step - 1)
  }
}

/// Labeled arguments: https://aiken-lang.org/language-tour/functions#labeled-arguments
pub fn exponent(i: Int, power pow: Int) {
  //                        ☝🏻
  // Overriding default labels: https://aiken-lang.org/language-tour/functions#overriding-default-labels
  //   👇🏻
  when pow is {
    0 -> 1
    1 -> i
    2 -> square(i)
    _ -> i * exponent(i, pow - 1)
  }
}
