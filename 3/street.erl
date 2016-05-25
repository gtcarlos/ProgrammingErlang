-module(street).
-export([start/0]).

start() ->
  House1 = {house, {number, 23},  {rooms, 1}, {bathrooms, 1}, {parking_lot, 0}},
  House2 = {house, {number, 52},  {rooms, 2}, {bathrooms, 1}, {parking_lot, 1}},
  House3 = {house, {number, 60},  {rooms, 3}, {bathrooms, 2}, {parking_lot, 2}},
  House4 = {house, {number, 110}, {rooms, 2}, {bathrooms, 1}, {parking_lot, 1}},

  Street = {street, {name, "John Doe Street"}, {city, "Springfield"},
            {state, hi}, {houses, [House1, House2, House3, House4]}},

  {street, {name, Name}, {city, City}, {state, State}, {houses, Houses}} = Street,
  [FirstHouse|T] = Houses,

  io:format(
    "~nStreet name: ~p~nCity: ~pState: ~p~nHouses: ~p~nFirst house: ~p~nOther houses: ~p~n",
    [Name, City, State, Houses, FirstHouse, T]
  ).
