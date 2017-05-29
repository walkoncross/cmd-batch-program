Set wshshell=CreateObject("wscript.shell")

wshshell.Run "iexplore"

WScript.Sleep 1000

wshshell.AppActivate "ie"

WScript.Sleep 2000

wshshell.SendKeys "%d"

WScript.Sleep 200

wshshell.SendKeys "http://doc-server"

WScript.Sleep 100

wshshell.SendKeys "{enter}"

WScript.Sleep 2000

wshshell.SendKeys "zyf4685"

WScript.Sleep 200

wshshell.SendKeys "{tab}"

WScript.Sleep 200

wshshell.SendKeys "Zyf#1987"

WScript.Sleep 200

wshshell.SendKeys "{tab}"

WScript.Sleep 200

wshshell.SendKeys "{tab}"

WScript.Sleep 200

wshshell.SendKeys "{enter}"

WScript.Sleep 1000