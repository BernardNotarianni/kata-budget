-module (csv_test).

-include_lib ("eunit/include/eunit.hrl").

parse_lines_test () ->
    Lines = ["2015/01/01;-10;A",
             "2015/01/02;20;B"],
    L = [{{2015,1,1},-10,"A"},
         {{2015,1,2},20,"B"}],
    ?assertEqual (L, csv: from_lines (Lines)).

parse_date_test () ->
    ?assertEqual ({2015,1,2}, csv: to_date ("2015/01/02")).

line_to_record_test () ->
    S = "2015/1/2;-3;A",
    ?assertEqual ({{2015,1,2},-3,"A"}, csv: to_record (S)).
