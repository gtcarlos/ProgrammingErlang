-module(person). -
export([init/1]).

init(Name) -> ...

% allows self to receive message from another process
receive
  {From, Message} ->
    ...
end
