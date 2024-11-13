drv = driver()

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

def update(delta)

IF KEY ASC("w") THEN LET $stringdisp = $string3
IF KEY ASC("s") THEN LET $stringdisp = $string4
IF KEY ASC("a") THEN LET $stringdisp = $string2
IF KEY ASC("d") THEN LET $stringdisp = $string

IF KEY ASC("w") THEN LET $counttall = $counttall-1
IF KEY ASC("a") THEN LET $countwide = $countwide-1
IF KEY ASC("s") THEN LET $counttall = $counttall+1
IF KEY ASC("d") THEN LET $countwide = $countwide+1


IF KEYP ASC("j") THEN LET $objectwide = $countwide
IF KEYP ASC("j") THEN LET $objecttall = $counttall

IF KEYP ASC("j") THEN PLAY "L32 F"




IF NOT KEYP ASC("k") THEN NOT LET $bulletwide = $countwide+6

IF NOT KEYP ASC("k") THEN NOT LET $bullettall = $counttall-3

IF KEYP ASC("k") THEN PLAY "L32 C"

text 2, 2, $stringdisp
text 2, 16, $countwide
text 2, 32, $counttall

text $countwide, $counttall, "I"


text $objectwide, $objecttall, "x"

text $bulletwide, $bullettall, "/"



if $bulletwide < 164 then let $bulletwide = $bulletwide+4
if $bulletwide > 164 then let $bulletwide = $countwide


REM prevent escaping outside the game window
IF $counttall > 120 THEN LET $counttall = 120 REM bottom
IF $countwide > 153 THEN LET $countwide = 153 REM right
IF $counttall < 1 THEN LET $counttall = 1 REM top
IF $countwide < -1 THEN LET $countwide = -1 REM left


enddef

update_with(drv, call(update))
