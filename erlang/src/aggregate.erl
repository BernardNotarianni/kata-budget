-module (aggregate).
-export ([sum/1]).

sum (Expenses) ->
    L = [-X || {_,X,_} <- Expenses],
    lists: sum (L).
