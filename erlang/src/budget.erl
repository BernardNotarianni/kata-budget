-module (budget).
-export ([main/1]).

main (_Args) ->
    FileName = "data.csv",
    {ok, File} = file: open (FileName, [read]),
    Lines = read (File),

    Records = csv: from_lines (Lines),
    Sum = aggregate: sum (Records),

    io: format ("Sum=~p~n",[Sum]).

read (File) ->
    case file: read_line (File) of
        {ok, Data} -> [Data | read (File)];
        eof        -> []
    end.
