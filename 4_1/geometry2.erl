- module(geometry2).
- export([test/0, area/1]).

test() ->
  12 = area({rectangle, 3, 4}),
  144 = area({square, 12}),
  78.5 = area({circle, 5}),
  tests_worked.

area({rectangle, Width, Height}) -> Width * Height;
area({circle, Radius})           -> 3.14 * Radius * Radius;
area({square, Side})             -> Side * Side.
