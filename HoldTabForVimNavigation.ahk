#include TapHoldManager\lib\TapHoldManager.ahk

thm := new TapHoldManager(holdTime := 100)

thm.Add("Tab", Func("tabDown"))

tabDown(isHold, taps, state){
    if (isHold) {
        Hotkey, h, sendLeft, On
        Hotkey, j, sendDown, On
        Hotkey, k, sendUp, On
        Hotkey, l, sendRight, On

    }
    ; Tap or release hold
    if (state != 1) {
        Hotkey, h, sendleft, Off
        Hotkey, j, senddown, Off
        Hotkey, k, sendup, Off
        Hotkey, l, sendright, Off

        if (state = -1)                 
            Send {Tab %taps%}

    }
}

sendleft:
    Send, {Left}
    return
senddown:
    Send, {Down}
    return
sendup:
    Send, {Up}
    return
sendright:
    Send, {Right}
    return
; Tab::
; 	KeyWait, Tab
; 	If (A_PriorKey="Tab")
; 		SetCapsLockState, % GetKeyState("Tab","T") ? "Off" : "On"
; Return

; #If, GetKeyState("Tab", "P") ;Your CapsLock hotkeys go below
; h::         Left                                                    
; j::         Down    
; k::         Up
; l::         Right
; #If
