drv = driver()

$kup = 1
$string = "d"
$string2 = "a"
$string3 = "w"
$string4 = "s"
$stringdisp = $string
$counttall = 1
$countwide = 1
$objectwide = -256
$objecttall = -256
$bulletwide = 1024
$bulletwide = 1024
$hourmatches = 69
$minutematches = 420

def update(delta)



text 1, 2, NOW("%R")


REM ---------------------------------------------
REM set alarm clock time here
IF NOW("%H") = "11" THEN LET $hourmatches = 1
IF NOW("%M") = "06" THEN LET $minutematches = 1
REM ---------------------------------------------



text 1, 11, NOW("current time")

text 1, 29, NOW("set alarm in script")



if $bulletwide < 164 then let $bulletwide = $bulletwide+4
if $bulletwide > 164 then let $bulletwide = $countwide



IF $counttall > 99 THEN LET $counttall = 99
IF $countwide > 99 THEN LET $countwide = 99
IF $counttall < 0 THEN LET $counttall = 0
IF $countwide < 0 THEN LET $countwide = 0


$curhour = NOW("%H")
$curmin = NOW("%M")




if $countwide = $inputtedhour THEN LET $hourmatches = 1
if $counttall = $inputtedminute THEN LET $minutematches = 1
if $hourmatches = $minutematches THEN PLAY "L32 F"


enddef

update_with(drv, call(update))
