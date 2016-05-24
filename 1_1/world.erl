-module(world). -
export([start/0]).

start() ->
  Joe     = spawn(person, init, ["Joe"]),
  Jane    = spawn(person, init, ["Jane"]),
  Dave    = spawn(person, init, ["Dave"]),
  Andy    = spawn(person, init, ["Andy"]),
  Rover   = spawn(dog,    init, ["Rover"]),
  Rex     = spawn(dog,    init, ["Rex"]),
  Rabbit1 = spawn(rabbit, init, ["Flopsy"]),

  % Joe sends message to Jane
  Jane ! {Joe, "Hope the dogs don't chase the rabbits"}
...
