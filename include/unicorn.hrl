-define(FILE_TO_NAME(File), binary_to_atom(File, latin1)).

-define(SUBSCRIBE(Pid, Path), {subscribe, Pid, Path}).
-define(UNSUBSCRIBE(Pid), {unsubscribe, Pid}).
-define(UNSUBSCRIBE(Pid, Path), {unsubscribe, Pid, Path}).

-define(RELOAD, reload).
-define(LIST_SUBSCRIBERS, list_subscribers).

-ifdef(DEBUG).
    -define(DBG(Msg), ?DBG(Msg, [])).
    -define(DBG(Msg, Args), io:format("[unicorn debug] " ++ Msg ++ "~n", Args)).
-else.
    -define(DBG(Msg), ?DBG(Msg, [])).
    -define(DBG(_Msg, _Args), ok).
-endif.