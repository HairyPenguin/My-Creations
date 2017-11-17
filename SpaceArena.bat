
@echo off
@title Space Arena
:gamestart

cls

echo.
type TitleScreen.txt
echo.
echo [1] Start
echo [2] Options
echo [3] Exit

::input stuffs

set /p menuinput= 

if %menuinput% == 1 (
cls
goto intro
)

if %menuinput% == 2 (
cls
goto options
)

if %menuinput% == 3 (
cls
goto exit
)

goto gamestart

:options

::options (duh)

echo OPTIONS
echo [1] Color
echo [2] Help
echo [0] Back

set /p optinput= 

if %optinput% == 1 (
cls 
goto coloroptions
)

if %optinput% == 2 (
cls
goto help
) 

if %optinput% == 0 (
cls
goto gamestart
)

cls 
goto options 

:coloroptions

echo [1] Blue
echo [2] Black (Default)
echo [3] Red (Why?)
echo [4] Green 
echo [0] Back

set /p coloroptions= Choose a color

if %coloroptions% == 1 (
color 17 
goto gamestart
)

if %coloroptions% == 2 (
color 07
goto gamestart
)

if %coloroptions% == 3 (
color 47
goto gamestart
)

if %coloroptions% == 4 (
color 27
goto gamestart
)

if %coloroptions% == 0 (
goto gamestart
)

cls 
goto coloroptions 

:help
echo Space Arena is a text based rpg/choose your own adventure novel thing. 
echo.
echo Whenever there is a choice, a list of options pops up. 
echo.
echo There is a number behind each of these options. 
echo. 
echo If you hit that number on your keyboard and then hit enter, you'll select that option.
echo.
echo I hope you enjoy the game/novel!
pause 
cls
goto options 


goto gamestart

:exit

set /p exitinput= Are you sure you want to exit? (y/n)

if %exitinput% == y (
goto totalend
)

if %exitinput% == n (
goto gamestart
)

cls
goto exit 

:intro

set /p skipinput= Do you want to skip the intro and go straight to the first fight? (y/n)

if %skipinput% == y (
cls
goto hjk
)

if %skipinput% == n (
cls 
goto realintro
)

goto intro 

:: A skippable intro

:realintro

echo The cold steel in the spaceship around you makes you shiver. You constantly hear a rumble coming from the engines,
echo just like the constant roaring of the crowd. Thats all you can hear during fighting hours anymore, otherwise, it's 
echo the rumbling and occasionaly, some footsteps from guards walking around.
echo You were captured by Galactic Slave owners.
echo.
echo You were one of the lucky ones.
echo.
echo You were chosen to fight in the Space Arena...
echo.
echo.
pause

cls

echo You stand in a small "prep-room", designed to get combatants ready. There is a small chair in the corner, and next to it a 
echo pile of items. A flat tray is protuding from the wall with, what you presume to be, a food dispensing hole above it. Suddenly, 
echo a gruff voice interupts your observations.
echo.
echo "Get ready! You're going out in a minute!"

pause

:hjk


echo What do you do?
echo.
echo [1] examine pile of items
echo [2] wait for the fight to start 
echo.
set /p introchoice= 

if %introchoice% == 1 (
cls 
goto epoi
)

if %introchoice% == 2 (
cls 
goto wait
)

cls
goto hjk


:epoi

echo You walk over to the small pile of items and notice a few things:
echo.
echo [1] a pair of old handmade shoulder and shin pads, likely made to protect the wearer
echo [2] a small yet hefty blaster, old and almost broken, but still usable nonetheless
echo [3] a pair of old boots, a definite upgrade to the rags wrapped around your feet
echo.
echo The Arenamaster's gruff voice interrupts again.
echo.
echo "Hurry up! It's time to go!"
echo.

:iop

set /p startitem= What do you equip? 

if %startitem% == 1 (
cls
goto armourstart
)

if %startitem% == 2 (
cls
goto blasterstart
)

if %startitem% == 3 (
cls 
goto bootstart
)

cls
goto iop



:wait

echo You impatiently await your almost inevitable death.
pause
goto nakedstart

:armourstart

echo The pads just barely fit around you, but when on, they give you some comfort knowing that you have some sort of protection
echo in this harsh environment.
echo.
echo The loud clanging of the grated door signals the entry of the Arenamaster, a large-headed, 6 feet tall, greasy alien.
echo He gropes your arms and shoves you with him down the labyrinth of hallways to the gates of the arena.
echo.
echo "Here, take this, you'll need it." 
echo.
echo He said, adding a chuckle at the end. You examine the item he gives you, It has a weight about it. A narrow, rusty, metal pole,
echo about 2 feet in length

pause 

cls

goto fight1

:blasterstart
echo The blaster has a good balance to it, despite being almost broken and dirty. The blaster uses a small fission battery-pack located
echo in the handle. The display mounted on it says "FULL CHARGE" but you dont beleive that.
echo.
echo The loud clanging of the grated door signals the entry of the Arenamaster, a large-headed, 6 feet tall, greasy alien.
echo He gropes your arms and shoves you with him down the labyrinth of hallways to the gates of the arena.
echo.
echo "Don't try and use that while we are in here, the arena is the only place it'll work. Otherwise, it'll just backfire and fry your brains
echo like a lagdonian worm.

pause 

cls 

goto fight1  

:bootstart
echo The boots, suprisingly, fit very comfortably. You pull the leather straps to fasten them to your cold feet. Immediately, you feel a little
echo better about this whole grim situation.
echo.
echo The loud clanging of the grated door signals the entry of the Arenamaster, a large-headed, 6 feet tall, greasy alien.
echo He gropes your arms and shoves you with him down the labyrinth of hallways to the gates of the arena.
echo.
echo "Here, take this, you'll need it." 
echo.
echo He said, adding a chuckle at the end. You examine the item he gives you, It has a weight about it. A narrow, rusty, metal pole,
echo about 2 feet in length

pause 

cls

goto fight1

:nakedstart













































:totalend