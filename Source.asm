;Muhammad Masab Hammad
;22I-1004
;CS-D




INCLUDE irvine32.inc
INCLUDE macros.inc

includelib Winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data 
menu1 db "______                    ___  ___",0           
menu2 db "| ___ \                   |  \/  |",0              
menu3 db "| |_/ /__ _   ___  ______ | .  . |  __ _  _ __",0 
menu4 db "|  __// _` | / __||______|| |\/| | / _` || '_ \",0
menu5 db "| |  | (_| || (__         | |  | || (_| || | | |",0
menu6 db "\_|   \__,_| \___|        \_|  |_/ \__,_||_| |_|",0
menu7 db "A Classic Reimagined!", 0
menu8 db "Enter Name: ",0
menu9 db "Press Esc Key to Exit",0
name1 db ?

menu10 db "___  ___      _            ___  ___", 0                 
menu11 db "|  \/  |     (_)           |  \/  |", 0                  
menu12 db "| .  . | __ _ _ _ __ ______| .  . | ___ _ __  _   _", 0  
menu13 db "| |\/| |/ _` | | '_ \______| |\/| |/ _ \ '_ \| | | |", 0 
menu14 db "| |  | | (_| | | | | |     | |  | |  __/ | | | |_| |", 0 
menu15 db "\_|  |_/\__,_|_|_| |_|     \_|  |_/\___|_| |_|\__,_|", 0
menu16 db "[1] PLAY",0
menu17 db "[2] INSTRUCTIONS", 0
menu18 db "[3] HIGHSCORES",0
menu19 db "---",0

menu20 db "Copyright 2023 | Muhammad Masab Hammad",0

IP db "Welcome to Pac-Man Adventure! A Classic Reimagined!",0
IP2 db "Embark on a nostalgic journey with Pac-Man, the iconic yellow hero of the arcade era, reimagined for a new generation.",0
IP3 db "Navigate mazes, munch coins, and outsmart ghosts in this modern twist on the original classic.",0
IP4 db "Use W-A-S-D to control the Pac-Man, grab bonus fruits, and aim for the high score. Get set for a Pac-tastic experience!",0
IP5 db "Press ENTER-key to continue", 0

over1 db "_____                        _____", 0              
over2 db "|  __ \                      |  _  |", 0               
over3 db "| |  \/ __ _ _ __ ___   ___  | | | |_   _____ _ __", 0 
over4 db "| | __ / _` | '_ ` _ \ / _ \ | | | \ \ / / _ \ '__|",0
over5 db "| |_\ \ (_| | | | | | |  __/ \ \_/ /\ V /  __/ |",0   
over6 db " \____/\__,_|_| |_| |_|\___|  \___/  \_/ \___|_|",0 

ls1 db "_   _           _     _                    _", 0       
ls2 db "| \ | |         | |   | |                  | |",0      
ls3 db "|  \| | _____  _| |_  | |     _____   _____| |",0      
ls4 db "| . ` |/ _ \ \/ / __| | |    / _ \ \ / / _ \ |",0      
ls5 db "| |\  |  __/>  <| |_  | |___|  __/\ V /  __/ |_ _ _",0 
ls6 db "\_| \_/\___/_/\_\\__| \_____/\___| \_/ \___|_(_|_|_)",0


     
yw1 db "__   __            _    _ _",0      
yw2 db "\ \ / /           | |  | (_)",0    
yw3 db " \ V /___  _   _  | |  | |_ _ __",0 
yw4 db "  \ // _ \| | | | | |/\| | | '_ \",0 
yw5 db "  | | (_) | |_| | \  /\  / | | | |",0
yw6 db "  \_/\___/ \__,_|  \/  \/|_|_| |_|",0
      
      

high1 db"  _    _ _       _           _____",0                         
high2 db" | |  | (_)     | |         / ____|",0                        
high3 db" | |__| |_  __ _| |__ _____| (___   ___ ___  _ __ ___  ___",0 
high4 db" |  __  | |/ _` | '_ \______\___ \ / __/ _ \| '__/ _ \/ __|",0
high5 db" | |  | | | (_| | | | |     ____) | (_| (_) | | |  __/\__ \",0
high6 db" |_|  |_|_|\__, |_| |_|    |_____/ \___\___/|_|  \___||___",0
high7 db"            __/ |",0                                          
high8 db"           |___/",0

                                  
ghost db "O",0

YellowOnBlue=yellow+(blue*16)
BlueOnYellow=blue+(yellow*16)

CoinArr1 db 120 dup(?)
TrCoinArr1 db 120 dup (?)

CoinArr2 db 120 dup (?)
TrCoinArr2 db 120 dup (?)

CoinArr3 db 120 dup (?)
TrCoinArr3 db 120 dup (?)

CoinArr4 db 120 dup (?)
TrCoinArr4 db 120 dup (?)

CoinArr5 db 120 dup (?)
TrCoinArr5 db 120 dup (?)

CoinArr6 db 120 dup (?)
TrCoinArr6 db 120 dup (?)

CoinArr7 db 120 dup (?)
TrCoinArr7 db 120 dup (?)

CoinArr8 db 120 dup (?)
TrCoinArr8 db 120 dup (?)

CoinArr9 db 120 dup (?)
TrCoinArr9 db 120 dup (?)

CoinArr10 db 120 dup (?)
TrCoinArr10 db 120 dup (?)

CoinArr11 db 120 dup (?)
TrCoinArr11 db 120 dup (?)

CoinArr12 db 120 dup (?)
TrCoinArr12 db 120 dup (?)

CoinArr13 db 120 dup (?)
TrCoinArr13 db 120 dup (?)

CoinArr14 db 120 dup (?)
TrCoinArr14 db 120 dup (?)

CoinArr15 db 120 dup (?)
TrCoinArr15 db 120 dup (?)

CoinArr16 db 120 dup (?)
TrCoinArr16 db 120 dup (?)

CoinArr17 db 120 dup (?)
TrCoinArr17 db 120 dup (?)

CoinArr18 db 120 dup (?)
TrCoinArr18 db 120 dup (?)

CoinArr19 db 120 dup (?)
TrCoinArr19 db 120 dup (?)

CoinArr20 db 120 dup (?)
TrCoinArr20 db 120 dup (?)

nT1 db 120 dup(?)
nT2 db 120 dup(?)
nT3 db 120 dup(?)
nT4 db 120 dup(?)
nT5 db 120 dup(?)
nT6 db 120 dup(?)
nT7 db 120 dup(?)
nT8 db 120 dup(?)
nT9 db 120 dup(?)
nT10 db 120 dup(?)
nT11 db 120 dup(?)

CRA1 db 120 dup(?)
CRA2 db 120 dup(?)
CRA3 db 120 dup(?)
CRA4 db 120 dup(?)
CRA5 db 120 dup(?)
CRA6 db 120 dup(?)
CRA7 db 120 dup(?)
CRA8 db 120 dup(?)
CRA9 db 120 dup(?)
CRA10 db 120 dup(?)
CRA11 db 120 dup(?)
CRA12 db 120 dup(?)
CRA13 db 120 dup(?)
CRA14 db 120 dup(?)
CRA15 db 120 dup(?)
CRA16 db 120 dup(?)
CRA17 db 120 dup(?)
CRA18 db 120 dup(?)
CRA19 db 120 dup(?)
CRA20 db 120 dup(?)



maxLength = 20
username db maxLength dup(?)
ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
;ground BYTE "-----------------------------------------------------------------------------------------------------------------______",0
ground1 BYTE "|",0Ah,0
ground2 BYTE "|",0

maze1 db "=====================",0
maze2 db "|",0
maze3 db "========",0
maze4 db "=================================",0
maze5 db "======",0
col db ?
mazeXPos db ?

;ghost db ">",0
ghostxPos db 80
ghostyPos db 14

gxPos db 3
gyPos db 13

gxPos1 db 45
gyPos1 db 16

ghost2xPos db 3
ghost2yPos db 27

ghost3xPos db 100
ghost3yPos db 9

ghost4xPos db 45
ghost4yPos db 3

ghostTemp db 0
ghostTempn db 0
ghostTempn1 db 0
ghostTemp2 db 0
ghostTemp3 db 0
ghostTemp4 db 0

tempp db 0
temp byte 0
temp2 dd 0
temp3 dd 0
temp4 dd 0
temp5 dd 0
temp6 dd 0
temp7 dd 0
temp8 dd 0
temp9 dd 0
temp10 dd 0
temp11 dd 0
temp12 dd 0
temp13 dd 0
temp14 dd 0
temp15 dd 0
temp16 dd 0
temp17 dd 0
temp18 dd 0
temp19 dd 0
temp20 dd 0
temp21 dd 0

grid db "------------------------------------------------------------------------------------------------------------------------",0
     db "| * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  |",0
     db "| * |  >                                                                                                     <     | * |",0
     db "| * |                                      =================================                                       | * |",0
     db "| * |                                      |* * *     * * * * * * * * * * *|                                       | * |",0
     db "| * |      * * * * * * * * * * * * * * * * |====== @@ =====================| * * * * * * * * * * * * * * * *       | * |",0
     db "| * |     =================================|                               |=================================      | * |",0
     db "| * |                                      |                               |                                       | * |",0
     db "| * |                                      |* * * * * * * * * * *    * * * |                                       | * |",0
     db "| * |                                      |===================== @@ ======|                                       | * |",0
     db "| * |                                      |                               |                                       | * |",0
     db "|* * * * * * * * * * * * * * * * *         |                               |          * * * * * * * * * * * * * * * * *|",0
     db "|=================================         |* * *     * * * * * * * * * * *|          =================================|",0
     db "|                                          |====== @@ =====================|                                           |",0
     db "|                                          |                               |                                           |",0
     db "|                                          |                               |                                           |",0
     db "|                                          |                               |                                           |",0
     db "|          * * * * * * * * * * * * * * * * |        * * * *|       * * * * | * * * * * * * * * * * * * * * *           |",0
     db "|         =================================|       ========|       ========|=================================          |",0
     db "|                                          |* * * *        |* * * *        |                                           |",0
     db "|                                          |========       |========       |                                           |",0
     db "|                                          |       * * * * |        * * * *|                                           |",0
     db "|                                          |       ========|       ========|                                           |",0
     db "|* * * * * * * * * * * * * * * * *         |* * * *        |* * * *        |          * * * * * * * * * * * * * * * * *|",0
     db "|=================================         |========       |========       |          =================================|",0
     db "|                                          |               |               |                                           |",0
     db "|      <                                   O               |                                                 >         |",0
     db "| * * * * * * * * * * * * * * * * * * * * * * * * * * * * *|* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *|",0
     db "------------------------------------------------------------------------------------------------------------------------",0
                                                                                                                                
TempUW db 0


p1 db "[Game Paused]",0
p2 db "Press [P] to resume",0


count dw ?
strScore BYTE "SCORE: ",0
score dw 0

fruitpresent db ?
fruitTemp db ?

G1xPos db 42
G1yPos db 11

G2xPos db 1
G2yPos db 16

G3xPos db 76
G3yPos db 16

G4xPos db 1
G4yPos db 23

G5xPos db 118
G5yPos db 23

strName db "PLAYER: ",0

strLives db "LIVES: ", 0
lives db 3

xPos BYTE 15    
yPos BYTE 15

xCoinPos BYTE ?
yCoinPos BYTE ?

inputChar BYTE ?

BossXpos db 44
BossyPos db 26

BossxPos1 db 60
BossyPos1 db 26

bosstemp1 db ?
bosstemp db ?

fruiteaten db ?

dollarx db 59
dollary db 16

dollartemp db ?

plx db 74
ply db 15

pltemp db ?

;boolll db ?

lx db 44
ly db 17
ltemp db ?

coll db ?

filename BYTE "HighScores.txt",0
filesize DD 500
fileHandle HANDLE ?

String_of_Names DB 1000 DUP(?)
SizeTemp DD ?

pacman_beginning	db "pacman_beginning.wav",0  ; Replace with the actual path to your sound file
end_scr db "end_screen_napo",0
coin_sound db "coin_8",0
bg db "bg",0
outro db "outro",0
hit db "hit_4",0
menuu db "menu",0


    

.code
main PROC

INVOKE PlaySound, OFFSET menuu, NULL,11h
call mainScreen

call clrscr
  
call mainMenu

call clrscr
 INVOKE PlaySound, NULL, NULL, 0

call Level1

call LoadingScreen

call clrscr

call Level2

call LoadingScreen

call clrscr

call Level3

INVOKE ExitProcess, 0
main ENDP

detectCoin PROC

cmp xPos, 2                   ;;firstly main condition for them to checl
JNE done1

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 28                   ;;loop 

mov edi, offset nT1
mov esi, offset CoinArr1
L1:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 28                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T1:
cmp dl, [edi+eax] 
JNE no1
jmp done1                     ;;equal found

no1:
inc eax
LOOP T1

mov cl, temp
cmp dl, [esi+ebx]
JNE next1

mov ebx, temp2
inc score
mov [edi+ebx], dl
inc temp2
jmp done1

next1:
inc ebx
LOOP L1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done1:

cmp yPos, 2                   ;;firstly main condition for them to checl
JNE done2

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 60                   ;;loop 

mov edi, offset nt2
mov esi, offset CoinArr2
L2:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 60                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T2:
cmp dl, [edi+eax] 
JNE no2
jmp done2                    ;;equal found

no2:
inc eax
LOOP T2

mov cl, temp
cmp dl, [esi+ebx]
JNE next2

mov ebx, temp3
inc score
mov [edi+ebx], dl
inc temp3
jmp done2

next2:
inc ebx
LOOP L2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done2:
cmp yPos, 28                  ;;firstly main condition for them to checl
JNE done3

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 58                  ;;loop 

mov edi, offset nt3
mov esi, offset CoinArr3
L3:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 58                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T3:
cmp dl, [edi+eax] 
JNE no3
jmp done3                     ;;equal found

no3:
inc eax
LOOP T3

mov cl, temp
cmp dl, [esi+ebx]
JNE next3

mov ebx, temp4
inc score
mov [edi+ebx], dl
inc temp4
jmp done3

next3:
inc ebx
LOOP L3


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done3:

cmp xPos, 117                   ;;firstly main condition for them to checl
JNE done4

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 25                   ;;loop 

mov edi, offset nt4
mov esi, offset CoinArr4
L4:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 25                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T4:
cmp dl, [edi+eax] 
JNE no4
jmp done4                   ;;equal found

no4:
inc eax
LOOP T4

mov cl, temp
cmp dl, [esi+ebx]
JNE next4

mov ebx, temp5
inc score
mov [edi+ebx], dl
inc temp5
jmp done4

next4:
inc ebx
LOOP L4

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-v1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done4:

cmp xPos, 44                   ;;firstly main condition for them to checl
JNE done5

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset nT5
mov esi, offset CoinArr5
L5:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T5:
cmp dl, [edi+eax] 
JNE no5
jmp done5                   ;;equal found

no5:
inc eax
LOOP T5

mov cl, temp
cmp dl, [esi+ebx]
JNE next5

mov ebx, temp6
inc score
mov [edi+ebx], dl
inc temp6
jmp done5

next5:
inc ebx
LOOP L5

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-v2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done5:
cmp xPos, 73                   ;;firstly main condition for them to checl
JNE done6

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset nT6
mov esi, offset CoinArr6
L6:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T6:
cmp dl, [edi+eax] 
JNE no6
jmp done6                  ;;equal found

no6:
inc eax
LOOP T6

mov cl, temp
cmp dl, [esi+ebx]
JNE next6

mov ebx, temp7
inc score
mov [edi+ebx], dl
inc temp7
jmp done6

next6:
inc ebx
LOOP L6

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-H;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done6:
cmp yPos, 17                   ;;firstly main condition for them to checl
JNE done7

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 16                   ;;loop 

mov edi, offset nT7
mov esi, offset CoinArr7
L7:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 16                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T7:
cmp dl, [edi+eax] 
JNE no7
jmp done7                    ;;equal found

no7:
inc eax
LOOP T7

mov cl, temp
cmp dl, [esi+ebx]
JNE next7

mov ebx, temp8
inc score
mov [edi+ebx], dl
inc temp8
jmp done7

next7:
inc ebx
LOOP L7

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Bottom-Square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done7:
cmp yPos, 20                  ;;firstly main condition for them to checl
JNE done8

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                  ;;loop 

mov edi, offset nT11
mov esi, offset CoinArr11
L8:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T8:
cmp dl, [edi+eax] 
JNE no8
jmp done8                    ;;equal found

no8:
inc eax
LOOP T8

mov cl, temp
cmp dl, [esi+ebx]
JNE next8

mov ebx, temp9
inc score
mov [edi+ebx], dl
inc temp9
jmp done8

next8:
inc ebx
LOOP L8


done8:
cmp xPos, 20                  ;;firstly main condition for them to checl
JNE done9

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset nT8
mov esi, offset CoinArr8
L9:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T9:
cmp dl, [edi+eax] 
JNE no9
jmp done9                   ;;equal found

no9:
inc eax
LOOP T9

mov cl, temp
cmp dl, [esi+ebx]
JNE next9

mov ebx, temp10
inc score
mov [edi+ebx], dl
inc temp10
jmp done9

next9:
inc ebx
LOOP L9


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Top-Square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done9:
cmp yPos, 10                 ;;firstly main condition for them to checl
JNE done10

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 9                 ;;loop 

mov edi, offset nT10
mov esi, offset CoinArr10
L10:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 9                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T10:
cmp dl, [edi+eax] 
JNE no10
jmp done10                  ;;equal found

no10:
inc eax
LOOP T10

mov cl, temp
cmp dl, [esi+ebx]
JNE next10

mov ebx, temp11
inc score
mov [edi+ebx], dl
inc temp11
jmp done10

next10:
inc ebx
LOOP L10


done10:
cmp xPos, 99                  ;;firstly main condition for them to checl
JNE done11

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset nT9
mov esi, offset CoinArr9
L11:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T11:
cmp dl, [edi+eax] 
JNE no11
jmp done11                   ;;equal found

no11:
inc eax
LOOP T11

mov cl, temp
cmp dl, [esi+ebx]
JNE next11

mov ebx, temp12
inc score
mov [edi+ebx], dl
inc temp12
jmp done11

next11:
inc ebx
LOOP L11

done11:

ret
detectCoin endp


mainScreen PROC
;setting bkue color
mov eax,6
call setTextColor


;moving to center of screen for each string
mov dl, 36
mov dh, 5
call Gotoxy              

;printing each string
mov edx, offset menu1
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 6
call Gotoxy

mov edx, offset menu2
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 7
call Gotoxy

mov edx, offset menu3
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 8
call Gotoxy

mov edx, offset menu4
call writestring

mov eax, 80
call delay

call crlf

mov eax,blue
call setTextColor

mov dl, 36
mov dh, 9
call Gotoxy

mov edx, offset menu5
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 10
call Gotoxy

mov edx, offset menu6
call writestring

mov eax, 80
call delay

call crlf

mov dl, 48
mov dh, 13
call Gotoxy

mov eax, 4
call  setTextColor

mov edx, offset menu7
call writestring

call crlf


mov eax, white
call SetTextColor

mov dl, 38
mov dh, 19
call Gotoxy

mov edx, offset menu9
call writestring

mov eax, magenta
call setTextColor

mov dl, 80
mov dh, 28
call Gotoxy

mov edx, offset menu20
call writestring

mov eax, white
call SetTextColor

mov dl, 38
mov dh, 16
call Gotoxy

mov edx, offset menu8
call writestring


; get user key input:
call ReadChar
mov inputChar,al

cmp inputChar, 27
je exitGame

mov eax, red
call setTextColor

mov dl, 50
mov dh, 16
call Gotoxy

mov edx, offset username
mov ecx, maxLength
call Readstring


jmp menuexit
exitGame:

mov eax, white
call setTextColor
call clrscr
 exit

menuexit:
ret
mainScreen ENDP


mainMenu PROC
call clrscr
mov eax,6
call setTextColor

mov dl, 33
mov dh, 5
call Gotoxy              

;printing each string
mov edx, offset menu10
call writestring

mov dl, 33
mov dh, 6
call Gotoxy              

;printing each string
mov edx, offset menu11
call writestring


mov dl, 33
mov dh, 7
call Gotoxy              

;printing each string
mov edx, offset menu12
call writestring

mov dl, 33
mov dh, 8
call Gotoxy              

;printing each string
mov edx, offset menu13
call writestring

mov dl, 33
mov dh, 9
call Gotoxy              

mov eax,blue
call setTextColor

;printing each string
mov edx, offset menu14
call writestring

mov dl, 33
mov dh, 10
call Gotoxy              

;printing each string
mov edx, offset menu15
call writestring



mov eax,red
call setTextColor

mov dl, 45
mov dh, 14
call Gotoxy              

;printing each string
mov edx, offset menu16
call writestring


mov dl, 45
mov dh, 16
call Gotoxy              

;printing each string
mov edx, offset menu17
call writestring

mov dl, 45
mov dh, 18
call Gotoxy              

;printing each string
mov edx, offset menu18
call writestring

mov dl, 73
mov dh, 20
call Gotoxy              

;printing each string
mov edx, offset menu19
call writestring

mov eax, magenta
call setTextColor

mov dl, 80
mov dh, 28
call Gotoxy

mov edx, offset menu20
call writestring

mov dl, 74
mov dh, 19
call Gotoxy

mov eax, red
call setTextColor

; get user key input:
call Readchar
mov inputChar,al

mov eax, 100
call delay

cmp inputChar, 49
je menuexit

cmp inputChar, 50
je second

cmp inputChar, 51
je third

jmp menuexit

second:
call InstructionPage

jmp menuexit

third:
call Highscore


menuexit:
ret
mainMenu endp


InstructionPage PROC
call clrscr

mov eax, red
call setTextColor

mov dh,3
mov dl, 35
call Gotoxy

mov edx, offset IP
mov ecx, lengthof IP
call writestring

mov eax, gray
call setTextColor

call crlf
call crlf
call crlf

mov edx, offset IP2
mov ecx, lengthof IP2
call writestring

call crlf
call crlf

mov edx, offset IP3
mov ecx, lengthof IP3
call writestring

call crlf
call crlf

mov edx, offset IP4
mov ecx, lengthof IP4
call writestring


call crlf
call crlf

mov eax, magenta
call setTextColor

mov dl, 80
mov dh, 28
call Gotoxy

mov edx, offset menu20
call writestring

mov eax, white
call setTextColor

mov dl, 47
mov dh, 15
call GOTOxy 

mov edx, offset IP5
mov ecx, lengthof IP5
call writestring

call Readchar
mov inputChar,al

cmp inputChar, 13
JNE done

call mainMenu

done:
ret
InstructionPage endp


makeCoins PROC
mov eax, 6
call SetTextColor


;;;;;;;;;;;;;;;;;;left coin wall;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr1

mov ecx ,28
mov dh, 2
mov temp,dh

ltest:
    mov dh,temp
    mov dl, 2
    call Gotoxy
    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
 ; call crlf
    inc temp
    loop ltest

;;;;;;;;;;;;;;;;;top coin wall;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr2

mov ecx, 60
mov dl, 2
mov temp, dl

l1:
    mov dl,temp
    mov dh, 2
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l1

;;;;;;;;;;;;;;;;;bottom coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr3
mov ecx, 58
mov dl, 2
mov temp, dl

l2:
    mov dl,temp
    mov dh, 28
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l2

;;;;;;;;;;;;;;;;;;;;;;;;;;right-coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr4
mov ecx ,25
mov dh, 3
mov temp,dh

l3:
    mov dh,temp
    mov dl, 117
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;top-tight square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;hor
mov esi, offset CoinArr10
mov ecx, 9
mov dl, 99
mov temp, dl

l4:
    mov dl,temp
    mov dh, 10
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l4

;;ver
mov esi, offset CoinArr9
mov ecx, 8
mov dh, 3
mov temp,dh

l5:
    mov dh,temp
    mov dl, 99
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l5

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;bottom-right square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;hor
mov esi, offset CoinArr11
mov ecx, 8
mov dl, 4
mov temp, dl

l6:
    mov dl,temp
    mov dh, 20
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l6

;;ver
mov esi, offset CoinArr8
mov ecx, 8
mov dh, 20
mov temp,dh

l7:
    mov dh,temp
    mov dl, 20
    call Gotoxy

     mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l7

;;top-T
;;ver
;mov ecx, 6
;mov dh, 5
;mov temp,dh

;l8:
 ;   mov dh,temp
  ;  mov dl, 29
;    call Gotoxy
;
 ;   mov al, "*"
  ;  call writechar

;    mov dh,temp
;    mov dl, 31
;    call Gotoxy
;
;    mov al, "*"
;    call writechar
;
;    inc temp
;    loop l8

;;hor
;mov ecx, 11
;mov dl, 20
;mov temp, dl

;l9:
 ;   mov dl,temp
;    mov dh, 4
;    call Gotoxy
;
;    mov al, "*"
;    call writechar
;
;    call crlf
;    inc temp
;    inc temp
;    loop l9

;;bottom-T
;;ver
;mov ecx, 6
;mov dh, 20
;mov temp,dh

;l10:
 ;   mov dh,temp
 ;   mov dl, 92
 ;   call Gotoxy

;    mov al, "*"
 ;   call writechar

  ;  mov dh,temp
   ; mov dl, 94
    ;call Gotoxy

  ;  mov al, "*"
   ; call writechar

    ;inc temp
    ;loop l10

;;hor
;mov ecx, 11
;mov dl, 83
;mov temp, dl

;l11:
 ;   mov dl,temp
  ;  mov dh, 26
   ; call Gotoxy

 ;   mov al, "*"
  ;  call writechar

   ; call crlf
    ;inc temp
    ;inc temp
    ;loop l11

;;;;;;;;;;;;;;;;;;;;;;U- horizontal;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr7
mov ecx, 16
mov dl, 44
mov temp, dl

l12:
    mov dl,temp
    mov dh, 17
    call Gotoxy

    mov al, "*"
    call writechar

    mov [esi], dl
    inc esi

    call crlf
    inc temp
    inc temp
    loop l12


;;;;;;;;;;;;;;;;;;;;;U-vertical;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CoinArr5
mov ecx, 8
mov dh, 10
mov temp,dh

l13:
    mov dh,temp
    mov dl, 44
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l13

mov esi, offset CoinArr6
mov ecx, 8
mov dh, 10
mov temp,dh

l14:
    mov dh,temp
    mov dl, 73
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l14

ret
makeCoins endp


makeBoundary PROC
 ; draw ground at (0,29):
  
  ;draw lower ground
    mov eax,blue ;(black * 16)
    call SetTextColor

    mov dl,0
    mov dh,29
    call Gotoxy

    mov edx,OFFSET ground
    call WriteString

    ;draw upper ground
    mov dl,0
    mov dh,1
    call Gotoxy

    mov edx,OFFSET ground
    call WriteString

    ;draw sides using loop
    mov ecx,27
    mov dh,2
      mov temp,dh
    l1:
      mov dh,temp
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l1


    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,119
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2

ret 
makeBoundary endp


makeMaze PROC

;top-left single
mov ecx ,9
mov dh, 3
mov temp,dh

l1:
    mov dh,temp
    mov dl, 8
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l1

;bottom-left shape
mov dh, 19
mov dl, 1
call gotoxy

mov edx, offset maze1
call writestring

mov ecx, 8
mov dh, 20

mov temp,dh

l2:
    mov dh,temp
    mov dl, 21
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2

 ;horizontal single line
mov dh, 27
mov dl, 35
call gotoxy
mov edx, offset maze1
call writestring

;T Upper
mov dh, 3
mov dl, 20
call gotoxy
mov edx, offset maze1
call writestring

mov ecx, 7
mov dh, 4

mov temp,dh

l3:
    mov dh,temp
    mov dl, 30
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l3

;center shape U

mov ecx, 9
mov dh, 10

mov temp,dh

l4:
    mov dh,temp
    mov dl, 43
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l4


mov dh,18
mov dl,43
call gotoxy
mov edx, offset maze1
call writestring

mov dh, 18
mov dl, 54
call gotoxy
mov edx, offset maze1
call writestring


mov ecx, 8
mov dh, 10

mov temp,dh

l5:
    mov dh,temp
    mov dl, 74
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l5


;bottom T
mov dh, 27
mov dl, 83
call gotoxy
mov edx, offset maze1
call writestring

mov ecx, 7
mov dh, 20

mov temp,dh

l6:
    mov dh,temp
    mov dl, 93
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l6


;top-right L
mov dh, 11
mov dl, 98
call gotoxy
mov edx, offset maze1
call writestring


mov ecx, 8
mov dh, 3

mov temp,dh

l7:
    mov dh,temp
    mov dl, 98
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l7

  ;U-partition

mov ecx, 10
mov dh, 5

mov temp,dh

l8:
    mov dh,temp
    mov dl, 58
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l8

    ;right horizontal line
mov dh, 16
mov dl, 98
call gotoxy
mov edx, offset maze1
call writestring

ret
makeMaze endp


DownWallCheck PROC
mov col, 0
;;;;;
cmp yPos, 18
JNE no

mov ecx, 20
mov al, 1

c1:
cmp xPos, al
JE collide
inc eax
LOOP c1

;;;;
no:
cmp yPos, 2
JNE no1

mov ecx, 20
mov al, 20

c2:
cmp xPos, al
JE collide
inc eax
LOOP c2

;;;;
no1:
cmp yPos, 17
JNE no2

mov ecx, 31
mov al, 43

c3:
cmp xPos, al
JE collide
inc eax
LOOP c3

;;;;;;

no2:
cmp yPos, 15
JNE no3

mov ecx, 21
mov al, 98

c4:
cmp xPos, al
JE collide
inc eax
LOOP c4

;;;;;;

no3:
cmp yPos, 26
JNE no4

mov ecx, 21
mov al, 35

c5:
cmp xPos, al
JE collide
inc eax
LOOP c5

;;;;;;

no4:
cmp yPos, 10
JNE no5

mov ecx, 21
mov al, 98

c6:
cmp xPos, al
JE collide
inc eax
LOOP c6

;;;;;
no5:
cmp yPos, 26
JNE no6

mov ecx, 21
mov al, 83

c7:
cmp xPos, al
JE collide
inc eax
LOOP c7
;;;;;;

no6:
cmp yPos,2
JNE no7

cmp xPos,8
JE collide

;;;;;

no7:
cmp yPos,19
JNE no8

cmp xPos,93
JE collide
;;;;;

no8:
cmp yPos,4
JNE no9

cmp xPos,58
JE collide

;;;;;;;;
no9:
cmp yPos,2
JNE no10

cmp xPos,98
JE collide

;;;;;;
no10:
cmp yPos,9
JNE no11

cmp xPos,43
JE collide

;;;;;;
no11:
cmp yPos,9
JNE no12

cmp xPos,74
JE collide

;;;;;;;
no12:
cmp yPos,18
JNE no13

cmp xPos,21
JE collide

no13:
jmp nocollide

collide:
mov col, 1

nocollide:
ret


DownWallCheck endp


UpWallCheck PROC
mov col, 0
;;;;;
cmp yPos, 20
JNE no

mov ecx, 20
mov al, 1

c1:
cmp xPos, al
JE collide
inc eax
LOOP c1

;;;;
no:
cmp yPos, 4
JNE no1

mov ecx, 20
mov al, 20

c2:
cmp xPos, al
JE collide
inc eax
LOOP c2

;;;;
no1:
cmp yPos, 19
JNE no2

mov ecx, 31
mov al, 43

c3:
cmp xPos, al
JE collide
inc eax
LOOP c3

;;;;;;

no2:
cmp yPos, 17
JNE no3

mov ecx, 21
mov al, 98

c4:
cmp xPos, al
JE collide
inc eax
LOOP c4

;;;;;;

no3:
cmp yPos, 28
JNE no4

mov ecx, 21
mov al, 35

c5:
cmp xPos, al
JE collide
inc eax
LOOP c5

;;;;;;

no4:
cmp yPos, 12
JNE no5

mov ecx, 21
mov al, 98

c6:
cmp xPos, al
JE collide
inc eax
LOOP c6

;;;;;
no5:
cmp yPos, 28
JNE no6

mov ecx, 21
mov al, 83

c7:
cmp xPos, al
JE collide
inc eax
LOOP c7
;;;;;;

no6:
cmp yPos,12
JNE no7

cmp xPos,8
JE collide

;;;;;

no7:
cmp yPos,28
JNE no8

cmp xPos,21
JE collide
;;;;;

no8:
cmp yPos,15
JNE no9

cmp xPos,58
JE collide

;;;;;;;;
no9:
cmp yPos,11
JNE no10

cmp xPos,30
JE collide

no10:

jmp nocollide

collide:
mov col, 1

nocollide:
ret


UpWallCheck endp


RightWallCheck PROC
;;;;;
mov col, 0
        cmp xPos, 7
        JNE no

        mov ecx, 9
        mov al, 3

        c1:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c1
      
;;;;;   
        no:
        cmp XPos, 20
        JNE no1

        mov ecx, 8
        mov eax, 0
        mov al, 20

        c2:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c2
;;;;;;        
        no1:
        cmp XPos, 29
        JNE no2

        mov ecx, 7
        mov al, 4

         c3:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c3
;;;;;;;;

        no2:
        cmp XPos, 42
        JNE no3

        mov ecx, 9
        mov al, 10

        c4:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c4

;;;;;;
        no3:
         cmp XPos, 73
        JNE no4

        mov ecx, 9
        mov al, 10

        c5:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c5
;;;;;;

        no4:
        cmp XPos, 92
        JNE no5

        mov ecx, 7
        mov al, 20

        c6:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c6
;;;;;;
        no5:
        cmp XPos, 97
        JNE no6

        mov ecx, 9
        mov al, 3

        c7:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c7

;;;;;;;
        no6:
        cmp XPos, 57
        JNE no7

        mov ecx, 10
        mov al, 5

        c8:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c8

;;;;;
        no7:
        cmp xPos, 82
        JNE no8

        cmp yPos, 27
        JE collide

;;;;;;
         no8:
        cmp xPos, 19
        JNE no9

        cmp yPos, 3
        JE collide

;;;;;
        no9:
        cmp xPos, 97
        JNE no10

        cmp yPos, 16
        JE collide
        
;;;;;;
        no10:
        cmp xPos, 34
        JNE nocollide
    
        cmp yPos, 27
        JE collide
;;;;;;     
        jmp nocollide

        collide:
        mov col, 1

        nocollide:
        ret

RightWallCheck Endp


LeftWallCheck PROC
;;;;;
mov col, 0
        cmp xPos, 9
        JNE no

        mov ecx, 9
        mov al, 3

        c1:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c1
      
;;;;;   
        no:
        cmp XPos, 22
        JNE no1

        mov ecx, 8
        mov eax, 0
        mov al, 20

        c2:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c2
;;;;;;        
        no1:
        cmp XPos, 31
        JNE no2

        mov ecx, 7
        mov al, 4

         c3:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c3
;;;;;;;;

        no2:
        cmp XPos, 44
        JNE no3

        mov ecx, 9
        mov al, 10

        c4:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c4

;;;;;;
        no3:
         cmp XPos, 75
        JNE no4

        mov ecx, 9
        mov al, 10

        c5:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c5
;;;;;;

        no4:
        cmp XPos, 94
        JNE no5

        mov ecx, 7
        mov al, 20

        c6:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c6
;;;;;;
        no5:
        cmp XPos, 99
        JNE no6

        mov ecx, 9
        mov al, 3

        c7:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c7

;;;;;;;
        no6:
        cmp XPos, 59
        JNE no7

        mov ecx, 10
        mov al, 5

        c8:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c8

;;;;;
        no7:
        cmp xPos, 104
        JNE no8

        cmp yPos, 27
        JE collide

;;;;;;
         no8:
        cmp xPos, 41
        JNE no9

        cmp yPos, 3
        JE collide

;;;;;
        no9:
        cmp xPos, 22
        JNE no10

        cmp yPos, 19
        JE collide
        
;;;;;;
        no10:
        cmp xPos, 56
        JNE nocollide
    
        cmp yPos, 27
        JE collide
;;;;;;     
        jmp nocollide

        collide:
        mov col, 1

        nocollide:
        ret



LeftWallCheck endp


UpperTab PROC

 ; draw score:
        mov eax, red
        call setTextColor

        mov dl,110
        mov dh, 0
        call Gotoxy

        mov edx, offset strlives
        call writestring

        mov eax, 6
        call SetTextColor

        mov al, lives
        call writedec

          mov eax, red
        call setTextColor

        mov dl,0
        mov dh,0
        call Gotoxy

        mov edx,OFFSET strName
        call WriteString

        mov eax, 6
        call setTextColor

        mov edx, offset username
        call writestring

         mov eax, red
        call setTextColor


        mov dl, 55
        mov dh, 0
        call Gotoxy

        mov edx, offset strScore
        call writestring

        mov eax, 6
        call setTextColor

        mov ecx, 0
        mov ax,score
        call WriteDec

         mov eax, red
        call setTextColor


ret
UpperTab endp


DrawPlayer PROC
    ; draw player at (xPos,yPos):
   mov eax, red
  call SetTextColor

    mov dl,xPos
    mov dh,yPos
    call Gotoxy

    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP


DrawGhost PROC

mov eax, gray
call setTextColor

mov dl, ghostxPos
mov dh, ghostyPos
call gotoxy

mov al, ghost
call WriteChar

mov dl, gxPos
mov dh, gyPos
call gotoxy

mov al, ghost
call WriteChar

mov dl, gxPos1
mov dh, gyPos1
call gotoxy

mov al, ghost
call WriteChar
ret

DrawGhost Endp

 
UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy

    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP


UpdateGhost PROC
 mov eax, 50
call delay


mov eax, gray
call setTextColor

cmp ghostTemp,1
JE Second


here:
cmp ghostyPos, 3
JE revert

mov dl, ghostxPos
mov dh, ghostyPos
call Gotoxy

mov al, " "
call writechar

dec ghostyPos

mov dl, ghostxPos
mov dh, ghostyPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp,0
jmp done

second:
revert:

cmp ghostyPos, 27   
JE here

mov dl, ghostxPos
mov dh, ghostyPos
call Gotoxy

mov al, " "
call writechar

inc ghostyPos

mov dl, ghostxPos
mov dh, ghostyPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp,1

done:
ret
UpdateGhost endp


UpdateGhostnew PROC

mov eax, gray
call setTextColor

cmp ghostTempn,1
JE revert

here:
cmp gxPos, 42
JE revert

mov dl, gxPos
mov dh, gyPos
call Gotoxy

mov al, " "
call writechar

inc gxPos

mov dl, gxPos
mov dh, gyPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,0
jmp done

revert:

cmp gxPos, 3
JE here

mov dl, gxPos
mov dh, gyPos
call Gotoxy

mov al, " "
call writechar

dec gxPos  


mov dl, gxPos
mov dh, gyPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTempn,1

done:
ret


UpdateGhostnew endp


UpdateGhostnew1 PROC
mov eax, gray
call setTextColor

cmp ghostTempn1,1
JE revert

here:
cmp gxPos1, 72
JE revert

mov dl, gxPos1
mov dh, gyPos1
call Gotoxy

mov al, " "
call writechar

inc gxPos1

mov dl, gxPos1
mov dh, gyPos1
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,0
jmp done

revert:

cmp gxPos1, 45
JE here

mov dl, gxPos1
mov dh, gyPos1
call Gotoxy

mov al, " "
call writechar

dec gxPos1  


mov dl, gxPos1
mov dh, gyPos1
call Gotoxy

mov al, ghost
call writechar

mov ghostTempn1,1

done:
ret

UpdateGhostnew1 endp


GhostCollide PROC
mov al, xPos
mov bl, yPos

cmp al, ghostxPos
JNE done

cmp bl, ghostyPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives
INVOKE PlaySound, OFFSET hit, NULL,11h

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, ghostxPos
mov dh, ghostyPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov ghostxPos, 80
mov ghostyPos, 14

mov dl, ghostxPos
mov dh, ghostyPos
call gotoxy

mov al, ghost
call writechar

done:
ret

GhostCollide endp


GhostCollideN PROC
mov al, xPos
mov bl, yPos

cmp al, gxPos
JNE done

cmp bl, gyPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives
INVOKE PlaySound, OFFSET hit, NULL,11h

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, gxPos
mov dh, gyPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov gxPos, 3
mov gyPos, 13

mov dl, gxPos
mov dh, gyPos
call gotoxy

mov al, ghost
call writechar

done:
ret



GhostCollideN endp


GhostCollideN1 PROC
mov al, xPos
mov bl, yPos

cmp al, gxPos1
JNE done

cmp bl, gyPos1
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives
INVOKE PlaySound, OFFSET hit, NULL,11h
mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, gxPos
mov dh, gyPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov gxPos1, 45
mov gyPos1, 16

mov dl, gxPos1
mov dh, gyPos1
call gotoxy

mov al, ghost
call writechar

done:
ret




GhostCollideN1 endp


DrawCoin PROC
    mov eax,gray ;(red * 16)
    call SetTextColor

    mov dl,xCoinPos
    mov dh,yCoinPos
    call Gotoxy

    mov al,"*"
    call WriteChar
    ret
DrawCoin ENDP


endScreen PROC
 INVOKE PlaySound, OFFSET end_scr, NULL,11h
call clrscr


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov eax,6
call setTextColor


;moving to center of screen for each string
mov dl, 36
mov dh, 5
call Gotoxy              

;printing each string
mov edx, offset over1
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 6
call Gotoxy

mov edx, offset over2
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 7
call Gotoxy

mov edx, offset over3
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 8
call Gotoxy

mov edx, offset over4
call writestring

mov eax, 80
call delay

call crlf

mov eax,blue
call setTextColor

mov dl, 36
mov dh, 9
call Gotoxy

mov edx, offset over5
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 10
call Gotoxy

mov edx, offset over6
call writestring

mov eax, 80
call delay

mov eax, white
call SetTextColor

mov dl, 50
mov dh, 14
call Gotoxy

mov eax, red
call setTextColor

mov edx, offset strName
call writestring

mov eax, 6
call setTextColor

mov edx, offset username
call writestring

mov eax, magenta
call setTextColor

mov dl, 80
mov dh, 28
call Gotoxy

mov edx, offset menu20
call writestring

;;;;;
mov eax, red
call SetTextColor

mov dl, 50
mov dh, 16
call Gotoxy

mov edx, offset strScore
call writestring

mov eax, 6
call setTextColor

mov ax, score
call writedec

mov eax, blue
call setTextColor

mov eax,5000
call delay

mov dl, 45
mov dh, 22
call gotoxy

mWrite "[There is nothing we can do]"

 mov eax, 1000000
 call delay

endScreen endp


PauseScreen PROC
mov eax, red
call setTextColor
mov dl, 39
mov dh, 24
call gotoxy

mov edx, offset p1
call writestring

mov dl, 36
mov dh, 25
call gotoxy

mov edx, offset p2
call writestring

check:
call readchar
mov inputchar, al

cmp inputchar, "p"
JE done
jmp check

done:
mov dh, 24
mov temp, 39
mov ecx, 14

L1:
mov dl, temp
call Gotoxy

mov al, " "
call writechar

inc temp
LOOP L1

;;;;;;;;;;
mov dh, 25
mov temp, 36
mov ecx, 19

L2:
mov dl, temp
call Gotoxy

mov al, " "
call writechar

inc temp
LOOP L2

ret
PauseScreen endp


cleardata PROC

mov temp, 0
mov temp2, 0
mov temp3, 0
mov temp4, 0
mov temp5, 0
mov temp6, 0
mov temp7, 0
mov temp8, 0
mov temp9, 0
mov temp10, 0
mov temp11, 0
mov temp12,0
ret

cleardata endp

;;;;;;;;;;;;;;;;;;;;
Level1 PROC
INVOKE PlaySound, OFFSET bg, NULL,11h
call makeCoins

    call makeBoundary

    call makeMaze
    
    call DrawPlayer

    call DrawGhost

    call Randomize

   

    gameLoop:
        
       cmp score, 230
       je levelfinish

       call UpperTab                            ;for scores, player names and lives
   
       call UpdateGhost

      call UpdateGhostnew

      call UpdateGhostnew1

       call GhostCollide

       call GhostCollideN

       call GhostCollideN1

       cmp lives, 0
       JE exitGame

        ; get user key input:
        call Readkey
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"p"
        JE pauseSC

        cmp inputChar,"w"
        je moveUp
         
        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        jmp gameloop

        pauseSC:
        call PauseScreen
        jmp gameloop

        moveUp:
        cmp yPos, 2
        JE gameLoop
        
        call UpWallCheck
        cmp col, 1
        JE gameloop
        
        ; allow player to jump:
        mov ecx,1
        jumpLoop:

            call UpdatePlayer
            dec yPos
            call DrawPlayer
           

        loop jumpLoop
        call detectCoin
        jmp gameLoop

        moveDown:
        cmp yPos, 28
        JE gameLoop

        call DownWallCheck
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        inc yPos
       
        call DrawPlayer
        call detectCoin
        jmp gameLoop

        moveLeft:
         
        cmp xPos, 1
        JE gameLoop

        call LeftWallCheck
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        dec xPos
        call DrawPlayer
        call detectCoin
        jmp gameLoop

        moveRight:
        cmp xPos, 118
        JE gameLoop
;;
        call RightWallCheck
        cmp col, 1
        JE gameloop
;;
        call UpdatePlayer     ;prints space at x,y pos
        inc xPos
        call DrawPlayer
        call detectCoin
        jmp gameLoop
        mov eax, temp2
    jmp gameLoop
 

  
    exitGame:
     INVOKE PlaySound, NULL, NULL, 0
    call endScreen
    exit

    levelfinish:
     INVOKE PlaySound, NULL, NULL, 0
    call clrscr
    call cleardata
    
Level1 endp
;;;;;;;;;;;

LoadingScreen PROC
call clrscr

mov eax,6
call setTextColor


;moving to center of screen for each string
mov dl, 36
mov dh, 5
call Gotoxy              

;printing each string
mov edx, offset ls1
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 6
call Gotoxy

mov edx, offset ls2
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 7
call Gotoxy

mov edx, offset ls3
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 8
call Gotoxy

mov edx, offset  ls4
call writestring

mov eax, 80
call delay

call crlf

mov eax,blue
call setTextColor

mov dl, 36
mov dh, 9
call Gotoxy

mov edx, offset ls5
call writestring

mov eax, 80
call delay

call crlf

mov dl, 36
mov dh, 10
call Gotoxy

mov edx, offset ls6
call writestring

mov eax, 1000
call delay


call clrscr
ret


LoadingScreen endp






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

makeCoins2 PROC
mov eax, 6
call SetTextColor


;;;;;;;;;;;;;;;;;;left coin wall;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA1

mov ecx ,28
mov dh, 2
mov temp,dh

ltest:
    mov dh,temp
    mov dl, 2
    call Gotoxy
    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
 ; call crlf
    inc temp
    loop ltest

;;;;;;;;;;;;;;;;;top coin wall;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA2

mov ecx, 60
mov dl, 2
mov temp, dl

l1:
    mov dl,temp
    mov dh, 2
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l1

;;;;;;;;;;;;;;;;;bottom coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA3
mov ecx, 58
mov dl, 2
mov temp, dl

l2:
    mov dl,temp
    mov dh, 28
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l2

;;;;;;;;;;;;;;;;;;;;;;;;;;right-coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA4
mov ecx ,25
mov dh, 3
mov temp,dh

l3:
    mov dh,temp
    mov dl, 117
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;top-tight square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;hor
mov esi, offset CRA10
mov ecx, 9
mov dl, 99
mov temp, dl

l4:
    mov dl,temp
    mov dh, 10
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l4

;;ver
mov esi, offset CRA9
mov ecx, 8
mov dh, 3
mov temp,dh

l5:
    mov dh,temp
    mov dl, 99
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l5

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;bottom-right square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;hor
mov esi, offset CRA11
mov ecx, 8
mov dl, 4
mov temp, dl

l6:
    mov dl,temp
    mov dh, 20
    call Gotoxy

    mov [esi], dl
    inc esi

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l6

;;ver
mov esi, offset Cra8
mov ecx, 8
mov dh, 20
mov temp,dh

l7:
    mov dh,temp
    mov dl, 20
    call Gotoxy

     mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l7

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Top-T Coin Wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;ver
mov esi, offset CRA12
mov ecx, 6     
mov dh, 5
mov temp,dh

l8:
mov dh,temp
mov dl, 29
call Gotoxy

mov [esi], dh
inc esi
;
mov al, "*"
call writechar
inc temp
loop l8

;;;;;;;;;;;

mov esi, offset CRA13
mov ecx, 6
mov dh, 5
mov temp,dh

l15:

 mov dh,temp
mov dl, 31
call Gotoxy


mov [esi], dh
inc esi
;
mov al, "*"
call writechar
;
inc temp
loop l15

;;;;;;;;;;;;;;;;;;;;;;hor
mov esi, offset CRA14
mov ecx, 5
mov dl, 20
mov temp, dl 

l9:
mov dl,temp
mov dh, 4
call Gotoxy

mov [esi], dl
inc esi

mov al, "*"
call writechar

call crlf
inc temp
inc temp
loop l9

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;bottom-T
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ver
mov esi, offset CRA15
mov ecx, 6
mov dh, 20
mov temp,dh    

l10:
 mov dh,temp
mov dl, 92
call Gotoxy

mov [esi], dh
inc esi

mov al, "*"
call writechar

inc temp
loop l10

;;;;;;;;;;;;

mov esi, offset CRA16
mov ecx, 6
mov dh, 20
mov temp,dh

l16:
mov dh,temp
mov dl, 94
call Gotoxy

mov [esi], dh
inc esi

mov al, "*"
call writechar

inc temp
loop l16

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;hor
mov esi, offset CRA19
mov ecx, 5
mov dl, 83
mov temp, dl

l11:
mov dl,temp                  
mov dh, 26
 call Gotoxy

 mov [esi], dl
inc esi

mov al, "*"
call writechar

call crlf
inc temp
inc temp
loop l11

;;;;;;;;;;;;;;;;;;;;;;U- horizontal;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA7
mov ecx, 16
mov dl, 44
mov temp, dl

l12:
    mov dl,temp
    mov dh, 17
    call Gotoxy

    mov al, "*"
    call writechar

    mov [esi], dl
    inc esi

    call crlf
    inc temp
    inc temp
    loop l12


;;;;;;;;;;;;;;;;;;;;;U-vertical;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset CRA5
mov ecx, 16
mov dh, 3
mov temp,dh

l13:
    mov dh,temp
    mov dl, 44
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l13

mov esi, offset CRA6
mov ecx, 14
mov dh, 3
mov temp,dh

l14:
    mov dh,temp
    mov dl, 73
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
    loop l14


;;;;;;;U-newly extended upper partition
mov esi, offset CRA17
mov ecx, 11
mov dh, 3
mov temp,dh

L17:
 mov dh,temp
    mov dl, 57
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
loop l17

;;;;;;;;;;
mov esi, offset CRA18
mov ecx, 11
mov dh, 3
mov temp,dh

L18:
 mov dh,temp
    mov dl, 59
    call Gotoxy

    mov [esi], dh
    inc esi

    mov al, "*"
    call writechar
    inc temp
loop l18


ret
makeCoins2 endp


detectCoin2 PROC

cmp xPos, 2                   ;;firstly main condition for them to checl
JNE done1

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 28                   ;;loop 

mov edi, offset TrCoinArr1
mov esi, offset CRA1
L1:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 28                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T1:
cmp dl, [edi+eax] 
JNE no1
jmp done1                     ;;equal found

no1:
inc eax
LOOP T1

mov cl, temp
cmp dl, [esi+ebx]
JNE next1

mov ebx, temp2
inc score
mov [edi+ebx], dl
inc temp2
jmp done1

next1:
inc ebx
LOOP L1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done1:

cmp yPos, 2                   ;;firstly main condition for them to checl
JNE done2

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 60                   ;;loop 

mov edi, offset TrCoinArr2
mov esi, offset CRA2
L2:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 60                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T2:
cmp dl, [edi+eax] 
JNE no2
jmp done2                    ;;equal found

no2:
inc eax
LOOP T2

mov cl, temp
cmp dl, [esi+ebx]
JNE next2

mov ebx, temp3
inc score
mov [edi+ebx], dl
inc temp3
jmp done2

next2:
inc ebx
LOOP L2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done2:
cmp yPos, 28                  ;;firstly main condition for them to checl
JNE done3

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 58                  ;;loop 

mov edi, offset TrCoinArr3
mov esi, offset CRA3
L3:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 58                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T3:
cmp dl, [edi+eax] 
JNE no3
jmp done3                     ;;equal found

no3:
inc eax
LOOP T3

mov cl, temp
cmp dl, [esi+ebx]
JNE next3

mov ebx, temp4
inc score
mov [edi+ebx], dl
inc temp4
jmp done3

next3:
inc ebx
LOOP L3


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done3:

cmp xPos, 117                   ;;firstly main condition for them to checl
JNE done4

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 25                   ;;loop 

mov edi, offset TrCoinArr4
mov esi, offset CRA4
L4:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 25                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T4:
cmp dl, [edi+eax] 
JNE no4
jmp done4                   ;;equal found

no4:
inc eax
LOOP T4

mov cl, temp
cmp dl, [esi+ebx]
JNE next4

mov ebx, temp5
inc score
mov [edi+ebx], dl
inc temp5
jmp done4

next4:
inc ebx
LOOP L4

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-v1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done4:

cmp xPos, 44                   ;;firstly main condition for them to checl
JNE done5

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 16                 ;;loop 

mov edi, offset TrCoinArr5
mov esi, offset CRA5
L5:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 16                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T5:
cmp dl, [edi+eax] 
JNE no5
jmp done5                   ;;equal found

no5:
inc eax
LOOP T5

mov cl, temp
cmp dl, [esi+ebx]
JNE next5

mov ebx, temp6
inc score
mov [edi+ebx], dl
inc temp6
jmp done5

next5:
inc ebx
LOOP L5

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-v2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done5:
cmp xPos, 73                   ;;firstly main condition for them to checl
JNE done6

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 14                   ;;loop 

mov edi, offset TrCoinArr6
mov esi, offset CRA6
L6:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 16                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T6:
cmp dl, [edi+eax] 
JNE no6
jmp done6                  ;;equal found

no6:
inc eax
LOOP T6

mov cl, temp
cmp dl, [esi+ebx]
JNE next6

mov ebx, temp7
inc score
mov [edi+ebx], dl
inc temp7
jmp done6

next6:
inc ebx
LOOP L6

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;U-H;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done6:
cmp yPos, 17                   ;;firstly main condition for them to checl
JNE done7

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 16                   ;;loop 

mov edi, offset TrCoinArr7
mov esi, offset CRA7
L7:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 16                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T7:
cmp dl, [edi+eax] 
JNE no7
jmp done7                    ;;equal found

no7:
inc eax
LOOP T7

mov cl, temp
cmp dl, [esi+ebx]
JNE next7

mov ebx, temp8
inc score
mov [edi+ebx], dl
inc temp8
jmp done7

next7:
inc ebx
LOOP L7

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Bottom-Square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done7:
cmp yPos, 20                  ;;firstly main condition for them to checl
JNE done8

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                  ;;loop 

mov edi, offset TrCoinArr11
mov esi, offset CRA11
L8:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T8:
cmp dl, [edi+eax] 
JNE no8
jmp done8                    ;;equal found

no8:
inc eax
LOOP T8

mov cl, temp
cmp dl, [esi+ebx]
JNE next8

mov ebx, temp9
inc score
mov [edi+ebx], dl
inc temp9
jmp done8

next8:
inc ebx
LOOP L8


done8:
cmp xPos, 20                  ;;firstly main condition for them to checl
JNE done9

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset TrCoinArr8
mov esi, offset CRA8
L9:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T9:
cmp dl, [edi+eax] 
JNE no9
jmp done9                   ;;equal found

no9:
inc eax
LOOP T9


mov cl, temp
cmp dl, [esi+ebx]
JNE next9

mov ebx, temp10
inc score
mov [edi+ebx], dl
inc temp10
jmp done9

next9:
inc ebx
LOOP L9


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Top-Square;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done9:
cmp yPos, 10                 ;;firstly main condition for them to checl
JNE done10

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 9                 ;;loop 

mov edi, offset TrCoinArr10
mov esi, offset CRA10
L10:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 9                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T10:
cmp dl, [edi+eax] 
JNE no10
jmp done10                  ;;equal found

no10:
inc eax
LOOP T10

mov cl, temp
cmp dl, [esi+ebx]
JNE next10

mov ebx, temp11
inc score
mov [edi+ebx], dl
inc temp11
jmp done10

next10:
inc ebx
LOOP L10


done10:
cmp xPos, 99                  ;;firstly main condition for them to checl
JNE done11

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 8                   ;;loop 

mov edi, offset TrCoinArr9
mov esi, offset CRA9
L11:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 8                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T11:
cmp dl, [edi+eax] 
JNE no11
jmp done11                   ;;equal found

no11:
inc eax
LOOP T11

mov cl, temp
cmp dl, [esi+ebx]
JNE next11

mov ebx, temp12
inc score
mov [edi+ebx], dl
inc temp12
jmp done11

next11:
inc ebx
LOOP L11


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done11:
cmp xPos, 57                  ;;firstly main condition for them to checl
JNE done12

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 11                   ;;loop 

mov edi, offset TrCoinArr17
mov esi, offset CRA17
L12:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 11                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T12:
cmp dl, [edi+eax] 
JNE no12
jmp done12                   ;;equal found

no12:
inc eax
LOOP T12

mov cl, temp
cmp dl, [esi+ebx]
JNE next12

mov ebx, temp13
inc score
mov [edi+ebx], dl
inc temp13
jmp done12

next12:
inc ebx
LOOP L12

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done12:
cmp xPos, 59                  ;;firstly main condition for them to checl
JNE done13

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 11                   ;;loop 

mov edi, offset TrCoinArr18
mov esi, offset CRA18
L13:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 11                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T13:
cmp dl, [edi+eax] 
JNE no13
jmp done13                   ;;equal found

no13:
inc eax
LOOP T13

mov cl, temp
cmp dl, [esi+ebx]
JNE next13

mov ebx, temp14
inc score
mov [edi+ebx], dl
inc temp14
jmp done13

next13:
inc ebx
LOOP L13


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Top-T  rr14/loop11/20,4  ;14/5/20,4
done13:
cmp yPos, 4                 ;;firstly main condition for them to checl
JNE done14

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                   ;;loop 

mov edi, offset TrCoinArr14
mov esi, offset CRA14
L14:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 6                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T14:
cmp dl, [edi+eax] 
JNE no14
jmp done14                  ;;equal found

no14:
inc eax
LOOP T14

mov cl, temp
cmp dl, [esi+ebx]
JNE next14

mov ebx, temp15
inc score
mov [edi+ebx], dl
inc temp15
jmp done14

next14:
inc ebx
LOOP L14

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done14:   ; 12/6/29,5
cmp xPos, 29                  ;;firstly main condition for them to checl
JNE done15

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                 ;;loop 

mov edi, offset TrCoinArr12
mov esi, offset CRA12
L15:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 16                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T15:
cmp dl, [edi+eax] 
JNE no15
jmp done15                 ;;equal found

no15:
inc eax
LOOP T15

mov cl, temp
cmp dl, [esi+ebx]
JNE next15

mov ebx, temp16
inc score
mov [edi+ebx], dl
inc temp16
jmp done15

next15:
inc ebx
LOOP L15


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done15:
cmp xPos, 31                  ;;firstly main condition for them to checl
JNE done16

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                 ;;loop 

mov edi, offset TrCoinArr13
mov esi, offset CRA13
L16:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 6                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T16:
cmp dl, [edi+eax] 
JNE no16
jmp done16                 ;;equal found

no16:
inc eax
LOOP T16

mov cl, temp
cmp dl, [esi+ebx]
JNE next16

mov ebx, temp17
inc score
mov [edi+ebx], dl
inc temp17
jmp done16

next16:
inc ebx
LOOP L16



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;15/6/92,20        16/6/94,20
done16:
cmp xPos, 92                  ;;firstly main condition for them to checl
JNE done17

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                 ;;loop 

mov edi, offset TrCoinArr15
mov esi, offset CRA15
L17:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 6                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T17:
cmp dl, [edi+eax] 
JNE no17
jmp done17                 ;;equal found

no17:
inc eax
LOOP T17

mov cl, temp
cmp dl, [esi+ebx]
JNE next17

mov ebx, temp18
inc score
mov [edi+ebx], dl
inc temp18
jmp done17

next17:
inc ebx
LOOP L17

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done17:
cmp xPos, 94                ;;firstly main condition for them to checl
JNE done18

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                 ;;loop 

mov edi, offset TrCoinArr16
mov esi, offset CRA16
L18:
mov dl, yPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 6                  ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T18:
cmp dl, [edi+eax] 
JNE no18
jmp done18                 ;;equal found

no18:
inc eax
LOOP T18

mov cl, temp
cmp dl, [esi+ebx]
JNE next18

mov ebx, temp19
inc score
mov [edi+ebx], dl
inc temp19
jmp done18

next18:
inc ebx
LOOP L18

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
done18:  ;;19/11/83,26
cmp yPos, 26                   ;;firstly main condition for them to checl
JNE done19

mov eax, 0                     ;;index increment for coin array
mov ebx, 0                     
mov ecx, 6                   ;;loop 

mov edi, offset TrCoinArr19
mov esi, offset CRA19
L19:
mov dl, xPos

mov temp, cl                  ;;to store outer loop value
mov ecx, 6                   ;;will store the contents of all of the coin array at the end when food is all collected, therefore also 28
mov eax, 0                    ;;index increment for tr array

T19:
cmp dl, [edi+eax] 
JNE no19
jmp done19                  ;;equal found

no19:
inc eax
LOOP T19

mov cl, temp
cmp dl, [esi+ebx]
JNE next19

mov ebx, temp20
inc score
mov [edi+ebx], dl
inc temp20
jmp done19

next19:
inc ebx
LOOP L19
done19:


ret
detectCoin2 endp


makeMaze2 PROC
mov eax, blue
call setTextColor
;top-left single
mov ecx ,9
mov dh, 3
mov temp,dh

l1:
    mov dh,temp
    mov dl, 8
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l1

;bottom-left shape
mov dh, 19
mov dl, 1
call gotoxy

mov edx, offset maze1
call writestring

mov ecx, 8
mov dh, 20

mov temp,dh

l2:
    mov dh,temp
    mov dl, 21
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2

 ;horizontal single line
mov dh, 27
mov dl, 35
call gotoxy
mov edx, offset maze1
call writestring

;T Upper
mov dh, 3
mov dl, 20
call gotoxy
mov edx, offset maze1
call writestring

mov ecx, 7
mov dh, 4

mov temp,dh

l3:
    mov dh,temp
    mov dl, 30
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l3

;center shape U

mov ecx, 16
mov dh, 3

mov temp,dh

l4:
    mov dh,temp
    mov dl, 43
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l4


mov dh,18
mov dl,43
call gotoxy
mov edx, offset maze1
call writestring

mov dh, 18
mov dl, 54
call gotoxy
mov edx, offset maze1
call writestring


mov ecx, 15
mov dh, 3

mov temp,dh

l5:
    mov dh,temp
    mov dl, 74
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l5


;bottom T
mov dh, 27
mov dl, 83
call gotoxy
mov edx, offset maze1
call writestring

mov ecx, 7
mov dh, 20

mov temp,dh

l6:
    mov dh,temp
    mov dl, 93
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l6


;top-right L
mov dh, 11
mov dl, 98
call gotoxy
mov edx, offset maze1
call writestring


mov ecx, 8
mov dh, 3

mov temp,dh

l7:
    mov dh,temp
    mov dl, 98
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l7

  ;U-partition

mov ecx, 13
mov dh, 2

mov temp,dh

l8:
    mov dh,temp
    mov dl, 58
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l8

    ;right horizontal line
mov dh, 16
mov dl, 98
call gotoxy
mov edx, offset maze1
call writestring


;;;;U-partition bottom
mov ecx ,10
mov dh, 19
mov temp,dh

l9:
    mov dh,temp
    mov dl, 58
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l9


;;;;;U bottom-new
mov dh,14
mov dl,48
call gotoxy
mov edx, offset maze1
call writestring


ret
makeMaze2 endp


DownWallCheck2 PROC
mov col, 0
;;;;;
cmp yPos, 18
JNE no

mov ecx, 20
mov al, 1

c1:
cmp xPos, al
JE collide
inc eax
LOOP c1

;;;;
no:
cmp yPos, 2
JNE no1

mov ecx, 20
mov al, 20

c2:
cmp xPos, al
JE collide
inc eax
LOOP c2

;;;;
no1:
cmp yPos, 17
JNE no2

mov ecx, 31
mov al, 43

c3:
cmp xPos, al
JE collide
inc eax
LOOP c3

;;;;;;

no2:
cmp yPos, 15
JNE no3

mov ecx, 21
mov al, 98

c4:
cmp xPos, al
JE collide
inc eax
LOOP c4

;;;;;;

no3:
cmp yPos, 26
JNE no4

mov ecx, 21
mov al, 35

c5:
cmp xPos, al
JE collide
inc eax
LOOP c5

;;;;;;

no4:
cmp yPos, 10
JNE no5

mov ecx, 21
mov al, 98

c6:
cmp xPos, al
JE collide
inc eax
LOOP c6

;;;;;
no5:
cmp yPos, 26
JNE no6

mov ecx, 21
mov al, 83

c7:
cmp xPos, al
JE collide
inc eax
LOOP c7
;;;;;;

no6:
cmp yPos,2
JNE no7

cmp xPos,8
JE collide

;;;;;

no7:
cmp yPos,19
JNE no8

cmp xPos,93
JE collide
;;;;;

no8:
cmp yPos,4
JNE no9

cmp xPos,58
JE collide

;;;;;;;;
no9:
cmp yPos,2
JNE no10

cmp xPos,98
JE collide

;;;;;;
no10:
cmp yPos,9
JNE no11

cmp xPos,43
JE collide

;;;;;;
no11:
cmp yPos,9
JNE no12

cmp xPos,74
JE collide

;;;;;;;
no12:
cmp yPos,18
JNE no13

cmp xPos,21
JE collide

;;;;;
no13:
cmp yPos, 21
JNE no14

cmp xPos, 58
JE collide

;;;;;;;;;;
no14:
cmp yPos, 13
JNE no15

mov ecx, 21
mov al, 48

c8:
cmp xPos, al
JE collide
inc eax
LOOP c8


no15:
cmp xPos,43
JNE no16

cmp yPos, 2
JE collide


no16:
cmp xPos, 74
JNE no17

cmp yPos, 2
JE collide

no17:
 jmp nocollide

collide:
mov col, 1

nocollide:
ret


DownWallCheck2 endp


UpWallCheck2 PROC
mov col, 0
;;;;;
cmp yPos, 20
JNE no

mov ecx, 20
mov al, 1

c1:
cmp xPos, al
JE collide
inc eax
LOOP c1

;;;;
no:
cmp yPos, 4
JNE no1

mov ecx, 21
mov al, 20

c2:
cmp xPos, al
JE collide
inc eax
LOOP c2

;;;;
no1:
cmp yPos, 19
JNE no2

mov ecx, 31
mov al, 43

c3:
cmp xPos, al
JE collide
inc eax
LOOP c3

;;;;;;

no2:
cmp yPos, 17
JNE no3

mov ecx, 21
mov al, 98

c4:
cmp xPos, al
JE collide
inc eax
LOOP c4

;;;;;;

no3:
cmp yPos, 28
JNE no4

mov ecx, 21
mov al, 35

c5:
cmp xPos, al
JE collide
inc eax
LOOP c5

;;;;;;

no4:
cmp yPos, 12
JNE no5

mov ecx, 21
mov al, 98

c6:
cmp xPos, al
JE collide
inc eax
LOOP c6

;;;;;
no5:
cmp yPos, 28
JNE no6

mov ecx, 21
mov al, 83

c7:
cmp xPos, al
JE collide
inc eax
LOOP c7
;;;;;;

no6:
cmp yPos,12
JNE no7

cmp xPos,8
JE collide

;;;;;

no7:
cmp yPos,28
JNE no8

cmp xPos,21
JE collide
;;;;;

no8:
cmp yPos,15
JNE no9

cmp xPos,58
JE collide

;;;;;;;;
no9:
cmp yPos,11
JNE no10

cmp xPos,30
JE collide

no10:
cmp yPos, 29
JNE no11

cmp xPos, 58
JE collide

no11:
cmp yPos, 15
JNE no12

mov ecx, 21
mov al, 48

c8:
cmp xPos, al
JE collide
inc eax
LOOP c8


no12:
jmp nocollide

collide:
mov col, 1

nocollide:
ret


UpWallCheck2 endp


RightWallCheck2 PROC
;;;;;
mov col, 0
        cmp xPos, 7
        JNE no

        mov ecx, 9
        mov al, 3

        c1:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c1
      
;;;;;   
        no:
        cmp XPos, 20
        JNE no1

        mov ecx, 8
        mov eax, 0
        mov al, 20

        c2:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c2
;;;;;;        
        no1:
        cmp XPos, 29
        JNE no2

        mov ecx, 7
        mov al, 4

         c3:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c3
;;;;;;;;

        no2:
        cmp XPos, 42
        JNE no3

        mov ecx, 16
        mov al, 3

        c4:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c4

;;;;;;
        no3:
         cmp XPos, 73
        JNE no4

        mov ecx, 16
        mov al, 3

        c5:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c5
;;;;;;

        no4:
        cmp XPos, 92
        JNE no5

        mov ecx, 7
        mov al, 20

        c6:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c6
;;;;;;
        no5:
        cmp XPos, 97
        JNE no6

        mov ecx, 9
        mov al, 3

        c7:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c7

;;;;;;;
        no6:
        cmp XPos, 57
        JNE no7

        mov ecx, 13
        mov al, 2

        c8:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c8

;;;;;
        no7:
        cmp xPos, 82
        JNE no8

        cmp yPos, 27
        JE collide

;;;;;;
         no8:
        cmp xPos, 19
        JNE no9

        cmp yPos, 3
        JE collide

;;;;;
        no9:
        cmp xPos, 97
        JNE no10

        cmp yPos, 16
        JE collide
        
;;;;;;
        no10:
        cmp xPos, 34
        JNE no11
    
        cmp yPos, 27
        JE collide
;;;;;;   

        
        no11:
        cmp xPos, 57
        JNE no12

        mov ecx, 10
        mov al, 19

        c9:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c9


        no12:
        cmp xPos, 47
        JNE no13

        cmp yPos, 14
        JE collide

        no13:
        jmp nocollide

        collide:
        mov col, 1

        nocollide:
        ret

RightWallCheck2 Endp


LeftWallCheck2 PROC
;;;;;
mov col, 0
        cmp xPos, 9
        JNE no

        mov ecx, 9
        mov al, 3

        c1:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c1
      
;;;;;   
        no:
        cmp XPos, 22
        JNE no1

        mov ecx, 8
        mov eax, 0
        mov al, 20

        c2:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c2
;;;;;;        
        no1:
        cmp XPos, 31
        JNE no2

        mov ecx, 7
        mov al, 4

         c3:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c3
;;;;;;;;

        no2:
        cmp XPos, 44
        JNE no3

        mov ecx, 16
        mov al, 3

        c4:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c4

;;;;;;
        no3:
         cmp XPos, 75
        JNE no4

        mov ecx, 16
        mov al, 3

        c5:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c5
;;;;;;

        no4:
        cmp XPos, 94
        JNE no5

        mov ecx, 7
        mov al, 20

        c6:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c6
;;;;;;
        no5:
        cmp XPos, 99
        JNE no6

        mov ecx, 9
        mov al, 3

        c7:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c7

;;;;;;;
        no6:
        cmp XPos, 59
        JNE no7

        mov ecx, 13
        mov al, 2

        c8:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c8

;;;;;
        no7:
        cmp xPos, 104
        JNE no8

        cmp yPos, 27
        JE collide

;;;;;;
         no8:
        cmp xPos, 41
        JNE no9

        cmp yPos, 3
        JE collide

;;;;;
        no9:
        cmp xPos, 22
        JNE no10

        cmp yPos, 19
        JE collide
        
;;;;;;
        no10:
        cmp xPos, 56
        JNE no11
    
        cmp yPos, 27
        JE collide
;;;;;;   

        no11:
        cmp xPos, 59
        JNE no12

        mov ecx, 10
        mov al, 19

        c9:
        cmp yPos, al
        JE collide
        inc eax
        LOOP c9

;;;;;;;;;
        no12:
        cmp xPos, 9
        JNE no13

        cmp yPos, 14
        JE collide

        no13:
        jmp nocollide

        collide:
        mov col, 1

        nocollide:
        ret



LeftWallCheck2 endp


DrawGhost2 PROC

mov eax, gray
call setTextColor

mov dl, ghost2xPos
mov dh, ghost2yPos
call gotoxy

mov al, ghost
call WriteChar

mov eax, gray
call setTextColor

mov dl, ghost3xPos
mov dh, ghost3yPos
call gotoxy

mov al, ghost
call WriteChar

mov eax, gray
call setTextColor

mov dl, ghost4xPos
mov dh, ghost4yPos
call gotoxy

mov al, ghost
call WriteChar
ret

DrawGhost2 Endp


UpdateGhost2 PROC

mov eax, 35
call delay

mov eax, gray
call setTextColor

cmp ghostTemp2,1
JE revert
cmp ghostTemp2, 2
JE back
cmp ghostTemp2, 3
JE fourth

here:
cmp ghost2yPos, 21
JE revert

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, " "
call writechar

dec ghost2yPos

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp2,0
jmp done

second:
revert:
cmp ghost2xPos, 19
JE back

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, " "
call writechar

inc ghost2xPos

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp2,1
jmp done

back:
cmp ghost2yPos, 27
JE fourth

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, " "
call writechar

inc ghost2yPos

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp2,2
jmp done

fourth:
cmp ghost2xPos, 3
JE here

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, " "
call writechar

dec ghost2xPos

mov dl, ghost2xPos
mov dh, ghost2yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp2,3
jmp done

done:
ret

UpdateGhost2 endp


UpdateGhost3 PROC

mov eax, gray
call setTextColor

cmp ghostTemp3,1
JE revert
cmp ghostTemp3, 2
JE back
cmp ghostTemp3, 3
JE fourth

here:
cmp ghost3yPos, 3
JE revert

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, " "
call writechar

dec ghost3yPos

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp3,0
jmp done

second:
revert:
cmp ghost3xPos, 116
JE back

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, " "
call writechar

inc ghost3xPos

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp3,1
jmp done

back:
cmp ghost3yPos,9
JE fourth

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, " "
call writechar

inc ghost3yPos

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp3,2
jmp done

fourth:
cmp ghost3xPos, 100
JE here

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, " "
call writechar

dec ghost3xPos

mov dl, ghost3xPos
mov dh, ghost3yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp3,3
jmp done

done:
ret

UpdateGhost3 endp


UpdateGhost4 PROC

mov eax, gray
call setTextColor

cmp ghostTemp4,1
JE second
cmp ghostTemp4, 2
JE third
cmp ghostTemp4, 3
JE fourth
cmp ghostTemp4, 4
JE fifth
cmp ghostTemp4, 5
JE sixth


first:
cmp ghost4yPos, 16
JE second

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

inc ghost4yPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 0
jmp done

second:
cmp ghost4XPos, 72
JE third

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

inc ghost4XPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 1
jmp done

third:
cmp ghost4YPos, 3
JE fourth

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

dec ghost4yPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 2
jmp done

fourth:
cmp ghost4yPos, 16
JE fifth

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

inc ghost4yPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 3
jmp done


fifth:
cmp ghost4xPos, 45
JE sixth

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

dec ghost4XPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 4
jmp done

sixth:
cmp ghost4YPos, 3
JE first

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, " "
call writechar

dec ghost4YPos

mov dl, ghost4xPos
mov dh, ghost4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp4, 5
jmp done

done:
ret

UpdateGhost4 endp


GhostCollide2 PROC
mov al, xPos
mov bl, yPos

cmp al, ghost2xPos
JNE done

cmp bl, ghost2yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, ghost2xPos
mov dh, ghost2yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov ghost2xPos, 3
mov ghost2yPos, 27

mov dl, ghost2xPos
mov dh, ghost2yPos
call gotoxy

mov al, ghost
call writechar
jmp done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




done:

ret

GhostCollide2 endp

 
GhostCollide3 proc

cmp al, ghost3xPos
JNE no

cmp bl, ghost3yPos
JNE no

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, ghost3xPos
mov dh, ghost3yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov ghost3xPos, 100
mov ghost3yPos, 9

mov dl, ghost3xPos
mov dh, ghost3yPos
call gotoxy

mov al, ghost
call writechar

no:
ret
GhostCollide3 endp


GhostCollide4 PROC

cmp al, ghost4xPos
JNE done

cmp bl, ghost4yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, ghost4xPos
mov dh, ghost4yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov ghost4xPos, 45
mov ghost4yPos, 3

mov dl, ghost4xPos
mov dh, ghost4yPos
call gotoxy

mov al, ghost
call writechar

jmp done

done:
ret

GhostCollide4 endp


Fruit PROC
cmp count, 300
JE print

jmp check

print:
mov dl, 58
mov dh, 15
call gotoxy

mov eax, green
call setTextcolor

mov al, "@"
call writechar

mov fruitpresent, 1

jmp done

check:
cmp count, 300
Jb done

cmp count, 550
JNE done

mov dl, 58
mov dh, 15
call gotoxy

mov al, " "
call writechar

mov fruitpresent, 0
done:
ret
Fruit endp


FruitScore PROC
cmp fruitTemp, 1
JE done

cmp count, 300
Jb done

cmp count, 380
jb done

cmp xPos, 58
JNE done

cmp yPos, 15
JNE done

mov fruiteaten, 1

add score, 10
mov fruittemp, 1

done:
ret 
FruitScore endp


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Level2 PROC
INVOKE PlaySound, OFFSET bg, NULL,11h
    
    call clrscr

    call makeCoins2

    call makeBoundary

    call makeMaze2
    
    call DrawPlayer

    call DrawGhost2

    call Randomize

    gameLoop:
       cmp fruiteaten, 1
       JNE noteaten

       cmp score, 537
       JE levelfinish
       jmp move

       noteaten:
       cmp score, 527
       je levelfinish

       move:
        inc count

        call Fruit

        call FruitScore

       call UpperTab                            ;for scores, player names and lives
    
       call UpdateGhost2

       call UpdateGhost3

       call UpdateGhost4

       
       call GhostCollide2

       call GhostCollide3

       call GhostCollide4

       cmp lives, 0
       JE exitGame

        ; get user key input:
        call Readkey
        mov inputChar,al



        ; exit game if user types 'x':
         cmp inputChar,"p"
        JE pauseSC

        cmp inputChar,"w"
        je moveUp
         
        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        jmp gameloop

       pauseSC:
        call PauseScreen
        jmp gameloop

        moveUp:
        cmp yPos, 2
        JE gameLoop
        
        call UpWallCheck2
        cmp col, 1
        JE gameloop
        
        ; allow player to jump:
        mov ecx,1
        jumpLoop:

            call UpdatePlayer
            dec yPos
            call DrawPlayer
           

        loop jumpLoop
        call detectCoin2
        jmp gameLoop

        moveDown:
        cmp yPos, 28
        JE gameLoop

       call DownWallCheck2
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        inc yPos
       
        call DrawPlayer
        call detectCoin2
        jmp gameLoop

        moveLeft:
         
        cmp xPos, 1
        JE gameLoop

        call LeftWallCheck2
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        dec xPos
        call DrawPlayer
        call detectCoin2
        jmp gameLoop

        moveRight:
        cmp xPos, 118
        JE gameLoop
;;
        call RightWallCheck2
        cmp col, 1
        JE gameloop
;;
        call UpdatePlayer     ;prints space at x,y pos
        inc xPos
        call DrawPlayer
        call detectCoin2
        jmp gameLoop
        mov eax, temp2
    jmp gameLoop
   
  
    exitGame:
      INVOKE PlaySound,NULL, NULL, 0
    call endScreen
    call clrscr
    exit


     levelfinish:
      INVOKE PlaySound, NULL, NULL, 0
   ;call cleardata
   call clrscr
  ; mov ghosttemp2, 0
   ;mov ghosttemp3,0
   ;mov ghosttemp4, 0
    

    ret
level2 endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



makeMaze3 PROC
mov eax, 50
call delay

mov eax, blue
call setTextColor

;top-left single
mov ecx ,9
mov dh, 3
mov temp,dh

l1:
    mov dh,temp
    mov dl, 4
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l1

;top-right single
mov ecx ,9
mov dh, 3
mov temp,dh

l5:
    mov dh,temp
    mov dl, 115
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l5

;Left-horizontals
;;;;;left
mov dh, 25
mov dl, 1
call gotoxy

mov edx, offset maze4
call writestring

mov dh, 13
mov dl, 1
call gotoxy

mov edx, offset maze4
call writestring

;;;;;;;;right
mov dh, 19
mov dl, 10
call gotoxy

mov edx, offset maze4
call writestring

mov dh, 7
mov dl, 10
call gotoxy

mov edx, offset maze4
call writestring


;center
mov ecx, 22
mov dh,5
mov temp, dh

l2:
    mov dh,temp
    mov dl, 43
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l2

mov ecx, 22
mov dh,5
mov temp, dh

l3:
    mov dh,temp
    mov dl, 75
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l3

mov dh, 4
mov dl, 43
call gotoxy

mov edx, offset maze4
call writestring

;;;;;center partititon
mov ecx, 11
mov dh,18
mov temp, dh

l4:
    mov dh,temp
    mov dl, 59
    call Gotoxy
    mov edx,OFFSET maze2
    call WriteString
    inc temp
    loop l4

;;;;;;;;;center left side partititons
;;;;left
mov dh, 25
mov dl, 44
call gotoxy

mov edx, offset maze3
call writestring

mov dh, 21
mov dl, 44
call gotoxy

mov edx, offset maze3
call writestring

;;;;;right
mov dh, 23
mov dl, 51
call gotoxy

mov edx, offset maze3
call writestring

mov dh, 19
mov dl, 51
call gotoxy

mov edx, offset maze3
call writestring

;;;;;;;;;center top partititons
mov dh, 6
mov dl, 44
call gotoxy

mov edx, offset maze5
call writestring

mov dh, 6
mov dl, 54
call gotoxy

mov edx, offset maze1
call writestring

mov dh, 10
mov dl, 44
call gotoxy

mov edx, offset maze1
call writestring

mov dl, 69
mov dh, 10
call gotoxy

mov edx, offset maze5
call writestring

mov dh, 14
mov dl, 44
call gotoxy

mov edx, offset maze5
call writestring

mov dh, 14
mov dl, 54
call gotoxy

mov edx, offset maze1
call writestring

;;;;;;;;;center right side partititons
;;;;left
mov dh, 25
mov dl, 60
call gotoxy

mov edx, offset maze3
call writestring

mov dh, 21
mov dl, 60
call gotoxy

mov edx, offset maze3
call writestring

;;;;;right
mov dh, 23
mov dl, 67
call gotoxy

mov edx, offset maze3
call writestring

mov dh, 19
mov dl, 67
call gotoxy

mov edx, offset maze3
call writestring

;;;;;;;;;;;;;;;;;right horizontals
;right
mov dh, 25
mov dl, 86
call gotoxy

mov edx, offset maze4
call writestring

mov dh, 13
mov dl, 86
call gotoxy

mov edx, offset maze4
call writestring


;left
mov dh, 19
mov dl, 76
call gotoxy

mov edx, offset maze4
call writestring

mov dh, 7
mov dl, 76
call gotoxy

mov edx, offset maze4
call writestring





ret
makeMaze3 endp



UpWallCheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl, xpos
;dec cx

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
sub ax, 121
;sub ax, bx
add esi, eax
mov ebx, [esi]

cmp bl, "="
JNE done

mov col, 1
jmp done1

done:
cmp bl, "|"
JNE donee

mov col, 1
jmp done1

donee:
mov col,0

done1:
ret
UpWallCheck3 endp


DownWallCheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl, xpos

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
add ax, 121
;add ax, bx
add esi, eax
mov ebx, [esi]
cmp bl, "="
JNE done
mov col, 1
jmp done1

done:
cmp bl, "|"
JNE donee

mov col, 1
jmp done1

donee:
mov col,0

done1:
ret
DownWallCheck3 endp


LeftWallCheck3 PROC
mov esi, offset grid

mov ebx, 0
mov eax, 0
mov ecx, 0
mov ecx, 0
mov cl, xPos

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
;add ax, bx
sub ax, 1
add esi, eax
mov ebx, [esi]
cmp bl, "|"
JNE done
mov col, 1
jmp done1

done:
cmp bl, "="
JNE donee

mov col, 1
jmp done1

donee:
mov col,0

done1:
ret

LeftWallCheck3 endp


RightWallCheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl, xpos

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
add ax, 1
;add ax, bx
add esi, eax
mov ebx, [esi]
cmp bl, "|"
JNE done
mov col, 1
jmp done1

done:
cmp bl, "="
JNE donee

mov col, 1
jmp done1

donee:
mov col,0

done1:
ret
RightWallCheck3 endp


GhostUpwallcheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl, Bossxpos
;dec cx

mov al, BossyPos
dec al
mov bl, 121
mul bl

add ax, cx
sub ax, 121
;sub ax, bx
add esi, eax
mov ebx, [esi]

cmp bl, "="
JNE done

mov coll, 1
jmp done1

done:
cmp bl, "|"
JNE donee

mov coll, 1
jmp done1

donee:
mov coll,0

done1:
ret
Ghostupwallcheck3 endp


GhostDownWallCheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl, BossxPos

mov al, BossyPos
dec al
mov bl, 121
mul bl

add ax, cx
add ax, 121
;add ax, bx
add esi, eax
mov ebx, [esi]

cmp bl, "="
JNE done
mov coll, 1
jmp done1

done:
cmp bl, "|"
JNE donee

mov coll, 1
jmp done1

donee:
mov coll,0

done1:
ret
GhostDownWallCheck3 endp


GhostLeftWallCheck3 PROC
mov esi, offset grid

mov ebx, 0
mov eax, 0
mov ecx, 0
mov ecx, 0
mov cl, BossxPos

mov al,BossyPos
dec al
mov bl, 121
mul bl

add ax, cx
;add ax, bx
sub ax, 1
add esi, eax
mov ebx, [esi]
cmp bl, "|"
JNE done
mov coll, 1
jmp done1

done:
cmp bl, "="
JNE donee

mov coll, 1
jmp done1

donee:
mov coll,0

done1:
ret

GhostLeftWallCheck3 endp


GhostRightWallCheck3 PROC
mov esi, offset grid
mov ecx, 0
mov ebx, 0
mov eax, 0
mov ecx, 0
mov cl,BossxPos

mov al,BossyPos
dec al
mov bl, 121
mul bl

add ax, cx
add ax, 1
;add ax, bx
add esi, eax
mov ebx, [esi]
cmp bl, "|"
JNE done
mov coll, 1
jmp done1

done:
cmp bl, "="
JNE donee

mov coll, 1
jmp done1

donee:
mov coll,0

done1:
ret
GhostRightWallCheck3 endp


makeCoins3 PROC
mov eax, 6
call SetTextColor

;;;;;;;;;;;;;;;;;top coin wall;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, 58
mov dl, 2
mov temp, dl

l1:
    mov dl,temp
    mov dh, 2
    call Gotoxy

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l1

;;;;;;;;;;;;;;;;;bottom coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, 59
mov dl, 2
mov temp, dl

l2:
    mov dl,temp
    mov dh, 28
    call Gotoxy

    mov al, "*"
    call writechar

    call crlf
    inc temp
    inc temp
    loop l2

;;;;;;;;;;;;;;;;;;left coin wall;;;;;;;;;;;;;;;;;;;;;


mov ecx ,9
mov dh, 3
mov temp,dh

ltest:
    mov dh,temp
    mov dl, 2
    call Gotoxy
    

    mov al, "*"
    call writechar
 ; call crlf
    inc temp
    loop ltest

 ;;;;;;;;;;;;;;;;;;;;;;;;;;right-coin wall;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx ,9
mov dh, 3
mov temp,dh

l3:
    mov dh,temp
    mov dl, 117
    call Gotoxy

    mov al, "*"
    call writechar
    inc temp
    loop l3

;;;;;;;;;;left horizontals
mov ecx, 17
mov dl, 1
mov temp, dl

l4:
mov dl, temp
mov dh, 24
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l4

;;;;;;;;;;;;;;;;;

mov ecx, 17
mov dl, 11
mov temp, dl

l5:
mov dl, temp
mov dh, 18
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l5

;;;;;;;;;;;;
mov ecx, 17
mov dl, 1
mov temp, dl

l6:
mov dl, temp
mov dh, 12
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l6

;;;;;;;;;
mov ecx, 17
mov dl, 11
mov temp, dl

l7:
mov dl, temp
mov dh, 6
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l7


;;;;;;;;;;right horizontals
mov ecx, 17
mov dl, 86
mov temp, dl

l8:
mov dl, temp
mov dh, 24
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l8

;;;;;;;;;;;;;;;;;

mov ecx, 17
mov dl, 75
mov temp, dl

l9:
mov dl, temp
mov dh, 18
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l9

;;;;;;;;;;;;
mov ecx, 17
mov dl, 86
mov temp, dl

l10:
mov dl, temp
mov dh, 12
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l10

;;;;;;;;;
mov ecx, 17
mov dl, 75
mov temp, dl

l11:
mov dl, temp
mov dh, 6
call gotoxy

 mov al, "*"
    call writechar
    inc temp
    inc temp
    loop l11


;;;;;;;;;;;;;;;Center Shape
mov dl, 44
mov dh, 24
call gotoxy

mWrite "* * * * "

mov dh, 20
call Gotoxy
mWrite "* * * *"

mov dl, 60
mov dh, 24
call gotoxy

mWrite "* * * * "

mov dh, 20
call Gotoxy
mWrite "* * * *"

;;;;;;;;;;;;;;;;;;
mov dl, 52
mov dh, 22
call gotoxy

mWrite "* * * * "

mov dh, 18
call Gotoxy
mWrite "* * * *"

mov dl, 68
mov dh, 18
call gotoxy

mWrite "* * * * "

mov dh, 22
call Gotoxy
mWrite "* * * *"

;;;;;;;;;;;;;;
mov dl, 44
mov dh, 13
call gotoxy
mWrite"* * *"

mov dl, 44
mov dh, 5
call gotoxy
mWrite"* * *"

mov dl, 70
mov dh, 9
call gotoxy
mWrite"* * *"
;;;;;;;;;;;;;;;
mov dl, 54
mov dh, 13
call gotoxy
mWrite"* * * * * * * * * * * "

mov dl, 54
mov dh, 5
call gotoxy
mWrite"* * * * * * * * * * * "

mov dl, 44
mov dh, 9
call gotoxy
mWrite"* * * * * * * * * * * "

ret
makeCoins3 endp


DetectCoinR PROC
mov esi, offset grid
mov ebx, 0
mov eax, 0
movzx cx, xpos
;dec cx

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
add esi, eax
mov ebx, [esi]

cmp bl, "*"
JNE done

inc score
mov al, " "
mov [esi], al

done:
cmp bl, "@"
JNE done1
add score, 10
mov al, " "
mov [esi], al

done1:
ret
DetectCoinR endp


FruitsLevel3 PROC
mov eax, green
call setTextColor

mov dl, 51
mov dh, 14
call gotoxy
mWrite "@@"

mov dl, 66
mov dh, 10
call gotoxy
mWrite "@@"

mov dl, 51
mov dh, 6
call gotoxy
mWrite "@@"


ret
FruitsLevel3 endp


Paths PROC
mov eax, white
call setTextcolor

mov dl, 7


mov dh, 27
call gotoxy
mWrite">"

mov dl, 109

mov dh, 3
call gotoxy
mWrite"<"

ret
Paths endp


PathChange PROC
mov esi, offset grid
mov ebx, 0
mov eax, 0
movzx cx, xpos
;dec cx

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
mov cx, ax
add esi, eax
mov ebx, [esi]

cmp bl, ">"
JNE done1

;;;;
mov dl, xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

mov xPos, 108
mov yPos, 3

mov dl, 108
mov dh, 3
call gotoxy

mov al, "X"
call writechar

mov al, " "
mov [esi], al


mov esi, offset grid
mov ebx, 0
mov eax, 0
movzx cx, xpos
;dec cx

mov al, yPos
dec al
mov bl, 121
mul bl

add ax, cx
mov cx, ax
add esi, eax

mov al, "X"
mov [esi], al

done1:
;cmp bl, "<"
;JNE done

done:
ret

PathChange endp


makeGhost PROC

mov dl, bossxPos
mov dh, BossyPos
call gotoxy

mov eax, gray
call setTExtcolor

mov al, "O"
call writechar

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov eax, gray
call setTextColor
mov al, "O"
call writechar

mov dl, G2xPos
mov dh, G2yPos
call gotoxy

mov eax, gray
call setTextColor
mov al, "O"
call writechar

mov dl, G3xPos
mov dh, G3yPos
call gotoxy

mov eax, gray
call setTextColor
mov al, "O"
call writechar


mov dl, G4xPos
mov dh, G4yPos
call gotoxy

mov eax, gray
call setTextColor
mov al, "O"
call writechar

mov dl, G5xPos
mov dh, G5yPos
call gotoxy

mov eax, gray
call setTextColor
mov al, "O"
call writechar

mov dl, lx
mov dh, ly
call gotoxy

mov al, "O"
call writechar

mov eax, gray
call setTExtcolor

mov dl, plx
mov dh, ply
call gotoxy

mov al, "O"
call writechar

mov eax, 6
call setTextcolor

mov dl, dollarx
mov dh, dollary
call gotoxy

mov al, "$"
call writechar




ret
makeGhost endp


Update3Ghost1 PROC
mov eax, gray
call setTextColor
mov eax,20
call delay


cmp GhostTemp2, 0
JE first
cmp GhostTemp2, 1
JE second
cmp GhostTemp2, 2
JE third
cmp GhostTemp2, 3
JE fourth
cmp GhostTemp2, 4
JE fifth
cmp GhostTemp2, 5
JE sixth
cmp GhostTemp2, 6
JE seventh
cmp GhostTemp2, 7
JE eighth
cmp GhostTemp2, 8
JE ninth
cmp GhostTemp2, 9
JE tenth

jmp done

first:
cmp G1xPos, 7
JE second

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

dec G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 0

jmp done

second:
cmp G1yPos, 3
JE third

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

dec G1yPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 1
jmp done

third:
cmp G1xPos, 113
JE fourth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

inc G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 2
jmp done

fourth:
cmp G1yPos, 11
JE fifth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

inc G1yPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 3
jmp done

fifth:
cmp G1xPos, 76
JE sixth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

dec G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 4
jmp done

sixth:
cmp G1xPos, 113
JE seventh

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

inc G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 5
jmp done

seventh:
cmp G1yPos, 3
JE eighth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

dec G1yPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 6
jmp done

eighth:
cmp G1xPos, 7
JE ninth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

dec G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 7
jmp done

ninth:
cmp G1yPos, 11
JE tenth

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

inc G1yPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 8
jmp done

tenth:
cmp G1xPos, 42
JE first

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar

inc G1xPos

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar

mov GhostTemp2, 9
jmp done

done:
ret
Update3Ghost1 endp


Update3Ghost2 PROC
mov eax, gray
call setTextColor

cmp ghostTemp,1
JE Second

here:
cmp G2xPos, 42
JE revert

mov dl, G2xPos
mov dh, G2yPos
call Gotoxy

mov al, " "
call writechar

inc G2xPos

mov dl, G2xPos
mov dh, G2yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp,0
jmp done

second:
revert:

cmp G2xPos, 1   
JE here

mov dl, G2xPos
mov dh, G2yPos
call Gotoxy

mov al, " "
call writechar

dec G2xPos

mov dl, G2xPos
mov dh, G2yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp,1

done:
ret



Update3Ghost2 endp


Update3Ghost3 PROC
mov eax, gray
call setTextColor

cmp ghostTemp3,1
JE Second

here:
cmp G3xPos, 118
JE revert

mov dl, G3xPos
mov dh, G3yPos
call Gotoxy

mov al, " "
call writechar

inc G3xPos

mov dl, G3xPos
mov dh, G3yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTemp3,0
jmp done

second:
revert:

cmp G3xPos, 76   
JE here

mov dl, G3xPos
mov dh, G3yPos
call Gotoxy

mov al, " "
call writechar

dec G3xPos

mov dl, G3xPos
mov dh, G3yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTemp3,1

done:
ret



Update3Ghost3 endp


Update3Ghost4 PROC
cmp GhostTempn, 0
JE first
cmp GhostTempn, 1
JE second
cmp GhostTempn, 2
JE third
cmp GhostTempn, 3
JE fourth
cmp GhostTempn, 4
JE fifth
cmp GhostTempn, 5
JE sixth

first:
cmp G4xPos, 42
JE second

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

inc G4xPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,0
jmp done


second:
cmp G4yPos, 27
JE third

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

inc G4yPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,1
jmp done

third:
cmp G4xPos, 1
JE fourth

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

dec G4xPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTempn,2
jmp done

fourth:
cmp G4xPos, 42
JE fifth

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

inc G4xPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,3

jmp done

fifth:
cmp G4yPos, 23
JE sixth

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

dec G4yPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,4
jmp done

sixth:
cmp G4xPos, 1
JE first

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, " "
call writechar

dec G4xPos

mov dl, G4xPos
mov dh, G4yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn,5
jmp done


done:
ret

Update3Ghost4 endp


Update3Ghost5 PROC
cmp GhostTempn1, 0
JE first
cmp GhostTempn1, 1
JE second
cmp GhostTempn1, 2
JE third
cmp GhostTempn1, 3
JE fourth
cmp GhostTempn1, 4
JE fifth
cmp GhostTempn1, 5
JE sixth

first:
cmp G5xPos, 76
JE second

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

dec G5xPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,0
jmp done


second:
cmp G5yPos, 27
JE third

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

inc G5yPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,1
jmp done

third:
cmp G5xPos, 118
JE fourth

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

inc G5xPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar

mov ghostTempn1,2
jmp done

fourth:
cmp G5xPos, 76
JE fifth

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

dec G5xPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,3

jmp done

fifth:
cmp G5yPos, 23
JE sixth

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

dec G5yPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,4
jmp done

sixth:
cmp G5xPos, 118
JE first

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, " "
call writechar

inc G5xPos

mov dl, G5xPos
mov dh, G5yPos
call Gotoxy

mov al, ghost
call writechar
mov ghostTempn1,5
jmp done


done:
ret

Update3Ghost5 endp

 
UpdateGhostBoss PROC
mov eax, gray
call setTextcolor

cmp bosstemp, 1
JE second

first:
cmp bossxPos, 58
JE second

mov dl, bossxPos
mov dh, bossyPos
call Gotoxy

mov al, " "
call writechar

inc bossxPos

mov dl, bossxPos
mov dh, bossyPos
call Gotoxy

mov al, ghost
call writechar
mov BossTemp,0
jmp done


second:

cmp bossxPos, 44
JE first

mov dl, bossxPos
mov dh, bossyPos
call Gotoxy

mov al, " "
call writechar

dec bossxPos

mov dl, bossxPos
mov dh, bossyPos

call Gotoxy

mov al, ghost
call writechar

mov BossTemp,1
jmp done

done:
    ret
UpdateGhostBoss ENDP


UpdateGhostBoss1 PROC
mov eax, gray
call setTextcolor

cmp bosstemp1, 1
JE second

first:
cmp bossxPos1, 74
JE second

mov dl, bossxPos1
mov dh, bossyPos1
call Gotoxy

mov al, " "
call writechar

inc bossxPos1

mov dl, bossxPos1
mov dh, bossyPos1
call Gotoxy

mov al, ghost
call writechar
mov BossTemp1,0
jmp done


second:

cmp bossxPos1, 60
JE first

mov dl, bossxPos1
mov dh, bossyPos1
call Gotoxy

mov al, " "
call writechar

dec bossxPos1

mov dl, bossxPos1
mov dh, bossyPos1

call Gotoxy

mov al, ghost
call writechar

mov BossTemp1,1
jmp done

done:
    ret
UpdateGhostBoss1 ENDP


LGhostUpdate PROC
mov eax, gray
call setTextcolor

cmp ltemp, 1
JE second

first:
cmp lx, 44
JE second

mov dl, lx
mov dh, ly
call Gotoxy

mov al, " "
call writechar

dec lx

mov dl, lx
mov dh, ly
call Gotoxy

mov al, ghost
call writechar
mov ltemp,0
jmp done


second:

cmp lx, 74
JE first

mov dl,lx
mov dh, ly
call Gotoxy

mov al, " "
call writechar

inc lx

mov dl, lx
mov dh, ly

call Gotoxy

mov al, ghost
call writechar

mov ltemp,1
jmp done

done:
    ret


LGhostUpdate endp


PLGhostUpdate PROC
mov eax, gray
call setTextcolor

cmp pltemp, 1
JE second

first:
cmp plx, 44
JE second

mov dl, plx
mov dh, ply
call Gotoxy

mov al, " "
call writechar

dec plx

mov dl, plx
mov dh, ply
call Gotoxy

mov al, ghost
call writechar
mov pltemp,0
jmp done


second:

cmp plx, 74
JE first

mov dl,plx
mov dh, ply
call Gotoxy

mov al, " "
call writechar

inc plx

mov dl, plx
mov dh, ply

call Gotoxy

mov al, ghost
call writechar

mov pltemp,1
jmp done

done:
    ret


PLGhostUpdate endp


Lev3Fruits PROC
cmp dollartemp, 1
JE done

cmp xPos, 59
JNE done

cmp yPos, 16
JNE done

mov dollartemp, 1

add score, 50


done:
ret 
Lev3Fruits endp


GhostBoss PROC
dfff:
mov al, BossXpos
cmp xPos, al
ja increment

call GhostLeftWallCheck3
cmp coll,1
JNE increment
call UpdateGhostBoss
inc BossxPos
call makeGhost
jmp revert

increment:
call GhostRightWallCheck3
cmp coll, 1
JNE dfff
call UpdateGhostBoss
inc BossxPos
call makeGhost

revert:

ret
GHostBoss endp


Collide3Ghost1 PROC
mov al, xPos
mov bl, yPos

cmp al, G1xPos
JNE done

cmp bl, G1yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov G1xPos, 42
mov G1yPos, 11

mov dl, G1xPos
mov dh, G1yPos
call gotoxy

mov al, ghost
call writechar
jmp done

done:

ret

Collide3Ghost1 endp


Collide3Ghost2 PROC
mov al, xPos
mov bl, yPos

cmp al, G2xPos
JNE done

cmp bl, G2yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, G2xPos
mov dh, G2yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov G2xPos, 1
mov G2yPos, 16

mov dl, G2xPos
mov dh, G2yPos
call gotoxy

mov al, ghost
call writechar
;mov ghostTemp,1
jmp done

done:

ret

Collide3Ghost2 endp


Collide3Ghost3 PROC
mov al, xPos
mov bl, yPos

cmp al, G3xPos
JNE done

cmp bl, G3yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, G3xPos
mov dh, G3yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov G3xPos, 76
mov G3yPos, 16

mov dl, G3xPos
mov dh, G3yPos
call gotoxy

mov al, ghost
call writechar
mov ghostTemp3,0
jmp done

done:

ret

Collide3Ghost3 endp


Collide3Ghost4 PROC
mov al, xPos
mov bl, yPos

cmp al, G4xPos
JNE done

cmp bl, G4yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, G4xPos
mov dh, G4yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov G4xPos, 1
mov G4yPos, 23

mov dl, G4xPos
mov dh, G4yPos
call gotoxy

mov al, ghost
call writechar
mov ghostTempn,0
jmp done

done:

ret

Collide3Ghost4 endp


Collide3Ghost5  PROC
mov al, xPos
mov bl, yPos

cmp al, G5xPos
JNE done

cmp bl, G5yPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, G5xPos
mov dh, G5yPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov G5xPos, 118
mov G5yPos, 23

mov dl, G5xPos
mov dh, G5yPos
call gotoxy

mov al, ghost
call writechar
mov ghostTempn1,0
jmp done

done:

ret

Collide3Ghost5 endp


Collide3Ghost6  PROC
mov al, xPos
mov bl, yPos

cmp al, bossxPos
JNE done

cmp bl, bossyPos
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, bossxPos
mov dh, bossyPos
call gotoxy

mov al, " "
call writechar
;;;;;;

mov bossxPos, 44
mov bossyPos, 26

mov dl, bossxPos
mov dh, bossyPos
call gotoxy

mov al, ghost
call writechar
mov bosstemp,0
jmp done

done:

ret

Collide3Ghost6 endp


Collide3Ghost7 proc
mov al, xPos
mov bl, yPos

cmp al, bossxPos1
JNE done

cmp bl, bossyPos1
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, bossxPos1
mov dh, bossyPos1
call gotoxy

mov al, " "
call writechar
;;;;;;

mov bossxPos1, 60
mov bossyPos1, 26

mov dl, bossxPos1
mov dh, bossyPos1
call gotoxy

mov al, ghost
call writechar
mov bosstemp1,0
jmp done

done:

ret



Collide3Ghost7 endp


CollideLGhost PROC
mov al, xPos
mov bl, yPos

cmp al, lx
JNE done

cmp bl, ly
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, lx
mov dh, ly
call gotoxy

mov al, " "
call writechar
;;;;;;

mov lx, 44
mov ly, 17

mov dl, lx
mov dh, ly
call gotoxy

mov al, ghost
call writechar
mov ltemp,0
jmp done

done:

ret

CollideLghost endp


CollidePLGhost PROC
mov al, xPos
mov bl, yPos

cmp al, plx
JNE done

cmp bl, ply
JNE done

mov dl ,xPos
mov dh, yPos
call gotoxy

mov al, " "
call writechar

dec lives

mov xPos, 15
mov yPos, 15

mov dl, xPos
mov dh, yPos
call gotoxy

mov eax, red
call setTextColor

mov al, "X"
call writechar 

mov eax, gray
call setTextColor

;;;;;;
mov dl, plx
mov dh, ply
call gotoxy

mov al, " "
call writechar
;;;;;;

mov plx, 44
mov ply, 15

mov dl, plx
mov dh, ply
call gotoxy

mov al, ghost
call writechar
mov pltemp,0
jmp done

done:

ret

CollidePLghost endp


checkcoins PROC
mov esi, offset grid
mov ecx, 3509
mov ebx, 0
mov eax, 0
mov dl, "*"
L1:
cmp [grid+ebx], dl
JNE no

inc eax
no:
inc ebx
LOOP L1
ret
checkcoins endp


Youwin PROC
INVOKE PlaySound, OFFSET outro, NULL,11h
call clrscr

mov eax,6
call setTextColor


;moving to center of screen for each string
mov dl, 40
mov dh, 5
call Gotoxy              

;printing each string
mov edx, offset yw1
call writestring

mov eax, 80
call delay

call crlf

mov dl, 40
mov dh, 6
call Gotoxy

mov edx, offset yw2
call writestring

mov eax, 80
call delay

call crlf

mov dl, 40
mov dh, 7
call Gotoxy

mov edx, offset yw3
call writestring

mov eax, 80
call delay

call crlf

mov dl, 40
mov dh, 8
call Gotoxy

mov edx, offset yw4
call writestring

mov eax, 80
call delay

call crlf

mov eax,blue
call setTextColor

mov dl, 40
mov dh, 9
call Gotoxy

mov edx, offset yw5
call writestring

mov eax, 80
call delay

call crlf

mov dl, 40
mov dh, 10
call Gotoxy

mov edx, offset yw6
call writestring

mov eax, 80
call delay

mov eax, white
call SetTextColor

mov dl, 50
mov dh, 14
call Gotoxy

mov eax, red
call setTextColor

mov edx, offset strName
call writestring

mov eax, 6
call setTextColor

mov edx, offset username
call writestring

mov eax, magenta
call setTextColor

mov dl, 80
mov dh, 28
call Gotoxy

mov edx, offset menu20
call writestring

;;;;;
mov eax, red
call SetTextColor

mov dl, 50
mov dh, 16
call Gotoxy

mov edx, offset strScore
call writestring

mov eax, 6
call setTextColor

mov ax, score
call writedec

mov eax, blue
call setTextColor

mov eax,5500
call delay




 mov eax, 1000000
 call delay

 Youwin endp


 PauseScreenL3 PROC
mov eax, red
call setTextColor
mov dl, 22
mov dh, 21
call gotoxy

mov edx, offset p1
call writestring

mov dl, 19
mov dh, 20
call gotoxy

mov edx, offset p2
call writestring

check:
call readchar
mov inputchar, al

cmp inputchar, "p"
JE done
jmp check

done:
mov dh, 21
mov temp, 22
mov ecx, 14

L1:
mov dl, temp
call Gotoxy

mov al, " "
call writechar

inc temp
LOOP L1

;;;;;;;;;;
mov dh, 20
mov temp, 19
mov ecx, 19

L2:
mov dl, temp
call Gotoxy

mov al, " "
call writechar

inc temp
LOOP L2

ret
PauseScreenL3 endp


Level3 PROC

INVOKE PlaySound, OFFSET bg, NULL,11h
    call clrscr
  
    call makeCoins3

    call makeBoundary

    call makeMaze3
    
    call DrawPlayer

    call FruitsLevel3

    call makeGhost


    gameLoop:

     cmp fruiteaten, 1
       JNE noteaten

       cmp score, 986
       JE levelfinish
       jmp move

       noteaten:
       cmp score, 976
       je levelfinish
        
    move:
       call UpperTab                            ;for scores, player names and lives
    
      call Lev3fruits

       call Update3Ghost1
       
      call Update3Ghost2

      call Update3Ghost4

      call Update3Ghost5

      call  Update3Ghost3

      call  UpdateGhostBoss

       call Collide3Ghost1

       call UpdateGhostBoss1

       call Collide3Ghost2

       call Collide3Ghost4

       call Collide3Ghost5

        call Collide3Ghost3

        call Collide3Ghost6

        call Collide3Ghost7

        call LGhostUpdate

        call PLGhostUpdate

        call CollideLghost

        call CollidePLGhost

       cmp lives, 0
       JE exitGame

        ; get user key input:
        call Readkey
        mov inputChar,al

         cmp inputChar,"p"
        JE pauseSC

        cmp inputChar,"w"
        je moveUp
         
        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        jmp gameloop

        pauseSC:
        call PauseScreenL3
        jmp gameloop


        moveUp:
        cmp yPos, 2
        JE gameLoop
        
        call UpWallCheck3
        cmp col, 1
        JE gameloop
 

        call UpdatePlayer
        dec yPos
        call DrawPlayer
  
        call DetectCoinR
        jmp gameLoop

        moveDown:
        cmp yPos, 28
        JE gameLoop

       call DownWallCheck3
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        inc yPos
       
        call DrawPlayer
    

        call DetectCoinR
        jmp gameLoop

        moveLeft:
         
        cmp xPos, 1
        JE gameLoop

       call LeftWallCheck3
        cmp col, 1
        JE gameloop

        call UpdatePlayer
        dec xPos
        call DrawPlayer

        call DetectCoinR
        jmp gameLoop

        moveRight:
        cmp xPos, 118
        JE gameLoop
;;
        call RightWallCheck3
        cmp col, 1
        JE gameloop
;;
        call UpdatePlayer     ;prints space at x,y pos
        inc xPos
        call DrawPlayer
     
        call DetectCoinR
        jmp gameLoop
        mov eax, temp2

        call checkcoins
        cmp eax, 0
        JE exitgame

    jmp gameLoop
  INVOKE PlaySound,NULL, NULL, 0  
   
    exitGame:
     INVOKE PlaySound,NULL, NULL, 0 
    call endScreen
    call clrscr
    exit

    levelfinish:
     INVOKE PlaySound,NULL, NULL, 0 
    call Youwin

    ret
level3 endp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


HighScore PROC
call clrscr

mov eax, 6
call setTextcolor

mov dl, 30
mov dh, 5
call gotoxy

mov edx, offset high1
call writestring

mov dl, 30
mov dh, 6
call gotoxy

mov edx, offset high2
call writestring

mov dl, 30
mov dh, 7
call gotoxy

mov edx, offset high3
call writestring

mov dl, 30
mov dh, 8
call gotoxy

mov edx, offset high4
call writestring

mov dl, 30
mov dh, 9
call gotoxy


mov eax, blue
call setTextcolor

mov edx, offset high5
call writestring

mov dl, 30
mov dh, 10
call gotoxy

mov edx, offset high6
call writestring

mov dl, 30
mov dh, 11
call gotoxy

mov edx, offset high7
call writestring

mov dl, 30
mov dh, 12
call gotoxy

mov edx, offset high8
call writestring

mov dl, 55
mov dh, 15
call gotoxy


;;;;;;;;;;
;mov edx, offset highScoreTitle
;call writestring

 looping : 

mov edx , offset fileName 
call openInputFile 
mov FileHandle , eax 

mov eax , FileHandle
mov edx , offset String_of_Names 
mov ecx ,  1000 
call ReadFromFile
mov SizeTemp , eax 

mov eax , FileHandle
call CloseFile 

mov edx , offset String_of_Names 
call WriteString 

mWrite <"Size " , 0dh , 0ah > 
mov eax , SizeTemp 
call WriteInt 

mov esi , offset String_of_Names 
add esi , SizeTemp 

mov bl , 0ah 
mov [esi] , bl 
add esi , 1 
inc SizeTemp 

mov ecx , 5 
mov edi, 0


KKK : 
mov bl , username[edi]
mov [esi] , bl 

inc esi 
inc edi 
inc SizeTemp 

loop KKK


mov  edx, OFFSET FileName
call CreateOutputFile
mov  FileHandle, EAX


mov  eax, fileHandle
mov  edx, OFFSET String_of_Names
mov  ecx, SizeTemp
call WriteToFile

mov  eax, fileHandle
call CloseFile




call ReadChar 




;;;;;;;;;;;

mov eax, white
call setTextColor

mov dl, 47
mov dh, 20
call GOTOxy 

mov edx, offset IP5
mov ecx, lengthof IP5
call writestring

call Readchar
mov inputChar,al

cmp inputChar, 13
JNE done

call mainMenu

done:
ret


mov eax,1000000
call delay

ret
HighScore endp

END main

