; Can't get it to work how I want. Jesus. Don't use this.
; Shift-tab doesn't work, alt-tab doesn't work. I miss keyd.


#If GetKeyState("Tab", "P")
h::Left
j::Down
k::Up
l::Right

n::Home
m::PgDn
,::PgUp
/::End
#If

*Tab::
KeyWait, Tab

#If, GetKeyState("Shift", P)
Send, +{Tab}
Return
#If

IF A_ThisHotkey = *Tab
	Send, {Tab}
Return






; *Tab::
; KeyWait, Tab
; If A_ThisHotKey = *Tab
; 	Send, {Tab}

; Return
; #If GetKeyState("Tab","P")
; h::left
; j::down
; k::up
; l::right                                                                            
; #If

; #If GetKeyState("Tab", "P")                                                      
; *h::Left            
; *j::Down    
; *k::Up                
; *l::Right
; #If