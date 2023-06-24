#include TapHoldManager\lib\TapHoldManager.ahk

thm := new TapHoldManager(holdTime := 100)

thm.Add("Tab", Func("tabDown"))

tabDown(isHold, taps, state){
    if (isHold) {
        Hotkey, h, sendLeft, On
        Hotkey, j, sendDown, On
        Hotkey, k, sendUp, On
        Hotkey, l, sendRight, On

        Hotkey, n, sendHome, On
        Hotkey, m, sendPgDn, On
        Hotkey, SC033, sendPgUp, On
        Hotkey, ., sendEnd, On

    }
    ; Tap or release hold
    if (state != 1) {
        Hotkey, h, sendLeft, Off
        Hotkey, j, sendDown, Off
        Hotkey, k, sendUp, Off
        Hotkey, l, sendRight, Off

        Hotkey, n, sendHome, Off
        Hotkey, m, sendPgDn, Off
        Hotkey, SC033, sendPgUp, Off
        Hotkey, ., sendEnd, Off

        if (state = -1)                 
            Send {Tab %taps%}

    }
}

sendLeft:
    Send, {Left}
    return
sendDown:
    Send, {Down}
    return
sendUp:
    Send, {Up}
    return
sendRight:
    Send, {Right}
    return


sendHome:
    Send, {Home}
    return
sendPgDn:
    Send, {PgDn}
    return
sendPgUp:
    Send, {PgUp}
    return
sendEnd:
    Send, {End}
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
