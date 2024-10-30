use modules/functions

test increments() {
  and {
    functions.increments(1, 2) == 3,
    functions.increments(4, 4) == 8,
    functions.increments(4, 5) == 9,
    functions.increments(0, 6) == 6,
    functions.increments(7, 0) == 7,
  }
  // functions.increment(8) == 9, // not exported
}

test decrements() {
  and {
    functions.decrements(9, 0) == 9,
    functions.decrements(8, 1) == 7,
    functions.decrements(6, 2) == 4,
    functions.decrements(3, 3) == 0,
    functions.decrements(0, 0) == 0,
  }
  // functions.decrement(5) == 4, // not exported
}

test exponent() {
  and {
    functions.exponent(2, 2) == 4,
    functions.exponent(i: 2, power: 2) == 4,
    //                ☝🏻         ☝🏻
    // It is possible use the defined labels to pass the arguments

    functions.exponent(3, 1) == 3,
    functions.exponent(3, power: 1) == 3,
    //                ☝🏻      ☝🏻
    // Positional arguments and labels can be mixed

    functions.exponent(4, 0) == 1,
    // functions.exponent(i: 4, 0) == 1,
    //                   ☝🏻    ☝🏻
    // unexpected::positional_argument

    functions.exponent(2, 3) == 8,
    functions.exponent(power: 2, i: 3) == 9,
    //                     ☝🏻   ☝🏻
    // Labeled arguments can be given in any order

    functions.exponent(2, 4) == 16,
  }
}
