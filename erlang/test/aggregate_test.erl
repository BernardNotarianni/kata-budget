-module(aggregate_test).

-include_lib ("eunit/include/eunit.hrl").

empty_expenses_sum_to_0_test () ->
    ?assertEqual (0, aggregate: sum ([])).

sum_all_expenses_test () ->
    Expenses = [{{2015,05,1}, -100, "A"},
                {{2015,05,1}, -50,  "B"},
                {{2015,05,2}, -1,   "C"}],
    ?assertEqual (151, aggregate: sum (Expenses)).
