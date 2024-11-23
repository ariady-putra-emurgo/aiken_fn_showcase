# aiken_fn_showcase

This project contains:

- [`functions.ak`](./lib/modules/functions.ak):
  - Private functions (accessible within the same module)
  - Public functions (`pub` keyword; accessible from outside by importing, eg. `use modules/functions`)
  - Labeled arguments (you can also override parameter labels; when running `aiken docs`, the function will display the parameter labels, but in the function body, they are called by the overriden labels)
- [`anonymous_functions.ak`](./validators/anonymous_functions.ak):
  - Anonymous functions (they are functions which the definition is not bound to an identifier)
  - Higher order functions (they are functions that take one or more functions as arguments, or return another function as the result)
