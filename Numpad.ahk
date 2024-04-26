; This is the best way I could find to use shift and alt together - +LAlt didn't work.

LAlt & u::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {!}
else
    Send {1}
return

LAlt & i::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {@}
else
    Send {2}
return

LAlt & o::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {#}
else
    Send {3}
return

LAlt & j::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {$}
else
    Send {4}
return

LAlt & k::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    SendRaw `%
else
    Send {5}
return

LAlt & l::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {^}
else
    Send {6}
return


LAlt & m::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {&}
else
    Send {7}
return

LAlt & ,::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    Send {*}
else
    Send {8}
return

LAlt & .::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    SendRaw `(
else
    Send {9}
return


; I'd like to use RAlt here, but it causes issues (it selects menus & stuff) if I type more than one 0
LAlt & Space::
GetKeyState,isLShiftDown,LShift,P
IfEqual,isLShiftDown,D
    SendRaw `)
else
    Send {0}
return
