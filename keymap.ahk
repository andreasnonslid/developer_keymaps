#Persistent ; Keeps the script running

; Win+- hotkey
#-::

    ; Checks if the WindowsTerminal window exists and is active
    IfWinExist, ahk_exe WindowsTerminal.exe
    {

        ; If the window is active, it will minimize
        ; Otherwise, it will activate (restore)
        IfWinActive
            WinMinimize
        Else
            WinActivate
    }
    else
    {
        ; Run the program if it is not open
        Run, wt
    }
return
