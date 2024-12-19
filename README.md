# aiken_fn_showcase

This project contains:

- [`functions.ak`](./lib/modules/functions.ak):
  - Private functions (accessible within the same module)
  - Public functions (`pub` keyword; accessible from outside by using import, see: [`./lib/qualified_unqualified_imports`](./lib/qualified_unqualified_imports))
  - Looping through recursion (https://aiken-lang.org/language-tour/control-flow#looping-through-recursion)
  - Labeled arguments (you can override parameter labels; when running `aiken docs`, the function will display the parameter labels, but in the function body, they are called by the overriden labels)
- [`anonymous_functions.ak`](./validators/anonymous_functions.ak):
  - Anonymous functions (they are functions which the definition is not bound to an identifier)
  - Higher order functions (they are functions that take one or more functions as arguments, or return another function as the result)
- [`backpassing.ak`](./validators/backpassing.ak):
  - Functions that take a continuation (ie. callback with 1 parameter) can be invoked using the backpassing operator (`<-`)
- [`piping.ak`](./validators/piping.ak):
  - The pipe operator (`|>`) allows you to chain function calls without using a lot of parenthesis and nesting
