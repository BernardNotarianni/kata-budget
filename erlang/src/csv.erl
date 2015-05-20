-module (csv).
-export ([to_date/1]).
-export ([from_lines/1]).
-export ([to_record/1]).

from_lines (Lines) ->
    [to_record (S) || S <- Lines].

to_date (S) ->
    [Ys,Ms,Ds] = string: tokens (S, "/"),
    Y = list_to_integer (Ys),
    M = list_to_integer (Ms),
    D = list_to_integer (Ds),
    {Y,M,D}.

to_record (S) ->
    [Ds,As,L] = string: tokens (S, ";"),
    D = to_date (Ds),
    A = to_number (As),
    {D,A,L}.

to_number (S) ->
    case string: to_float (S) of
        {error,_} ->
            list_to_integer (S);
        {F,_} -> F
    end.
