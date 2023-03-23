﻿pinetree(nectar){
	pinetreestart:
	if (tier = 1){
		GuiControlGet,pineconvhive
		if (pineconvhive){
			if (firstpinerun = true){
				global firstpinerun := false
				Reset()
			}
		}
		else{
			Reset()
		}
	}
	else{
		Reset()
	}
	if (resetpine){
		global resetpine := false
		Reset()
	}
	
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pinetreestart
	}
	camrotate(3,"r")
	send e
	Send {Shift}
	sleep 800
	SendSpace()
	Send {Shift}
	SendSpace()
	sleep 8000
	if (nectar = true){
		camrotate(1,"l")
		walk(3000,"f")
		walk(3000,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(300,"l") 
		sleep 1000
	}else{
		IniRead,pinewalkbackdelay,configs/previous.ini,advanced,pinecornerwalkdata
		IniRead,pinecornerwaitdata,configs/previous.ini,advanced,pinecornerwait
		if (tier = 1 || tier = 2 || tier = 3){
			walk(pinecornerwaitdata,"f")
		}else{
			walk(7000,"f")
		}
		if (tier = 1 || tier = 2 || tier = 3){
			walk(pinewalkbackdelay,"b")
		}else{
			walk(1800,"b")
		}
	}
}

pineapple(nectar){
	pineapstart:
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pineapstart
	}
	Send e
	camrotate(2,"l")
	Send {shift}
	sleep 1900
	Sendspace()
	Sendspace()
	Send {shift}
	sleep 2650
	camrotate(2,"l")
	Send {Shift}
	sleep 500
	Send {Shift}
	SendSpace()
	sleep 2000
	if (nectar = true){
		walk(4000,"f")
		walk(4000,"l")
	}
}

sunf(nectar){
	SendInput {Escape}
	sleep 100
	SendInput {r}
	sleep 100
	SendInput {Enter}
	sleep 8000
	Reset()
	walk(7000,"r")
	Sendspace()
	walk(400,"r")
	sleep 1000
	walk(2000,"r")
	walk(5500,"b")
	if (nectar = true){
		walk(5000,"r")
		walk(6000,"f")
		walk(300,"b")
		walk(175,"l")
		sleep 200
	}else{
		walk(750,"l")
	}
} 

pump(nectar){
	pumpstart:
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,pumpstart
	}
	camrotate(3,"r")
	Send e
	Send {Shift}
	sleep 1000
	SendSpace()
	SendSpace()
	Send {Shift}
	sleep 3000
	camrotate(1,"r")
	SendSpace()
	sleep 2000
	walk(1000,"f")
	if (nectar = true){
		walk(4000,"f")
		sleep 100
		walk(75,"b")
		sleep 250
		Send {Shift}
		Send {Space Down}
		walk(7000,"r")
		Send {Space Up}
		Send {Shift}
		sleep 2000
		walk(1000,"f")
		walk(250,"l")
	}
}

bluf(nectar){
	blufstart:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,blufstart
	}
	camrotate(2,"l")
	send e
	send {Shift}
	sleep 620
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 3200
	sendSpace()
	sleep 1250
	walk(1500,"l")
	walk(1000,"r")
	if (nectar){
		walk(4500,"r")
		Send {Shift}
		walk(4000,"b")
		Send {Shift}
		loop 20{
			walk(50,"l")
			Send e
		}
		walk(1500,"r")
		walk(300,"l")
	}
}

straw(nectar){
	strawstart:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,strawstart
	}
	camrotate(2,"r")
	Send e
	Send {Shift}
	sleep 1000
	SendSpace()
	SendSpace()
	Send {Shift}
	sleep 1700
	SendSpace()
	sleep 3000
	walk(4000,"r")
	walk(3000,"f")
	if (nectar = true){
		walk(100,"b")
		walk(100,"l")
	}
	else{
		walk(750,"b")
		walk(750,"l")
	}
}

coco(nectar){
	cocostart:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,cocostart
	}
	walkhold("r","Down")
	sleep 4000
	SendSpace()
	sleep 1500
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 2000
	SendSpace()
	sleep 3000
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 4000
	walkhold("f","Up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	sleep 75
	camrotate(4,"r")
	Send {Shift}
	walk(1000,"l")
	if(nectar = true){
		walk(1500,"r")
		walk(200,"l")
		sleep 100
	}
}

dande(nectar){
	dandstart:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,dandstart
	}
	camrotate(1,"l")
	send e
	send {Shift}
	sleep 600
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 1700
	sendSpace()
	Sleep 3000
	camrotate(1,"l")
	if (nectar = true){
		walk(3000,"f")
		walk(5000,"l")
		camrotate(1,"l")
		loop 30{
			walk(100,"b")
			Send e
		}
		walk(1000,"f")
	}
	else{
		camrotate(2,"r")
		walk(750,"f")
		walk(777,"r")
		camrotate(2,"r")
	}
} 

spider(nectar){
	spidestart:
	reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,spidestart
	}
	camrotate(2,"l")
	Send e
	sleep 100
	SendSpace()
	sleep 800
	SendSpace()
	sleep 200
	SendSpace()
	sleep 2000
	walk(4000,"l")
	walk(4000,"b")
	if not (nectar){
		camrotate(2,"l")
		walk(1000,"b")
		walk(1000,"r")
	}
}

rose(nectar){
	StartRose:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,StartRose
	}
	camrotate(2,"r")
	Send e
	Send {Shift}
	sleep 125
	SendSpace()
	sleep 100
	Send {Shift}
	sleep 250
	SendSpace()
	sleep 2500
	SendSpace()
	sleep 3000
	camrotate(2,"r")
	loop 25{
		walk(100,"f")
		walk(100,"r")
	}
	if (nectar){
		walk(75,"b")
		walk(75,"l")
	}
	else{
		walk(1000,"b")
		walk(1000,"l")
	}
}

mush(nectar){
	startmush:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startmush
	}
	camrotate(2,"l")
	Send e
	Send {shift}
	SendSpace()
	sleep 300
	Send {shift}
	Sendspace()
	sleep 666
	SendSpace()
	sleep 3000
	camrotate(2,"l")
	if (nectar = true){
		walk(3000,"f")
		loop 6{
			walk(750,"r")
			walk(750,"f")
		}
		walk(200,"l")
		walk(100,"b")
	}
	else{
		walk(2250,"f")
		walk(500,"l")
	}
}

bamboo(nectar){
	startbamb:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startbamb
	}
	camrotate(2,"l")
	Send e
	Send {Shift}
	sleep 150
	SendSpace()
	sleep 950
	Send {Shift}
	SendSpace()
	sleep 2400
	SendSpace()
	camrotate(4,"l")
	sleep 5000
	if(nectar = true){
		camrotate(4,"l")
		walk(3000,"l")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(5000,"f")
		camrotate(4,"l")
		Send {Shift}
		sleep 100
		Send {Shift}
		loop 20{
			walk(50,"f")
			Send e
		}
		walk(3000,"b")
		walk(300,"f")
	}
}

mountain(nectar){
	startmount:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startmount
	}
	Send e
	sleep 4000
	if(nectar = false){
		walk(400,"l")
		walk(400,"f")
	}
} 

cactus(nectar){
	if (nectar = true){
		pump(true)
		walk(1000,"r")
		walk(5000,"b")
		walk(250,"l")
	}
	else{
		pump(false)
		camrotate(2,"r")
		walk(2500,"r")
	}
}

stump(nectar){
	startstump:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startstump
	}
	camrotate(2,"l")
	send e
	send {Shift}
	sleep 1800
	sendSpace()
	sendSpace()
	send {Shift}
	sleep 5000
	sendSpace()
	sleep 2000
	walk(1750,"l")
	if (nectar = true){
		walk(4000,"f")
		Send {Shift}
		camrotate(2,"l")
		walk(4000,"f")
		camrotate(2,"r")
		walk(500,"f")
		camrotate(5,"l")
		Send {Shift}
		camrotate(4,"r")
		Send oooooooo
		walk(500,"b")
		SendSpace()
		walk(500,"b")
		loop 30{
			walk(100,"b")
			Send e
		}
		walk(1000,"f")
	}
}

pep(nectar){
	startpep:
	Reset()
	walktocannon()
	if (reconnectedcannon){
		global reconnectedcannon := false
		goto,startpep
	}
	walkhold("r","Down")
	sleep 3500
	SendSpace()
	sleep 1000
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 1000
	SendSpace()
	sleep 2750
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 3000
	walkhold("f","up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	camrotate(4,"r")
	Send ooooo
	sleep 50
	Send {Shift}
	SendSpace()
	walk(4000,"f")
	SendSpace()
	walkhold("r","Down")
	walk(5000,"f")
	sleep 1700
	walkhold("r","Up")
	Send {Shift}
	camrotate(3,"l")
	walk(75,"f")
	sleep 50
	Send {Shift}
	camrotate(3,"l")
	walkhold("r","Down")
	sleep 1200
	camrotate(2,"l")
	SendSpace()
	sleep 1000
	walkhold("r","Up")
	if not (nectar){
		walkhold("r","Up")
		walk(550,"r")
		camrotate(2,"r")
	}
	if (nectar = true){
		camrotate(2,"l")
		Sleep 3000
		walkhold("r","Up")
		camrotate(2,"l")
		Send {Shift}
		sleep 300
		Send {Shift}
		loop 25{
			walk(100,"f")
			Send e
		}
		walk(1000,"b")
	}
}

clover(nectar){
	Reset()
	walktocannon()
	camrotate(2,"l")
	Send e
	Send {Shift}
	sleep 100
	SendSpace()
	sleep 200
	Send {Shift}
	SendSpace()
	sleep 4000
	SendSpace()
	sleep 750
	walk(500,"f")
	if(nectar){
		walk(5000,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(50,"l")
		walk(5000,"b")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(100,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(2000,"f")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(100,"b")
		Send {Shift}
		sleep 100
		Send {Shift}
		SendSpace()
		walk(500,"f")
		walk(250,"l")
	}
}

bluebooster(){
	EventLog("Going to claim blue booster")
	bluf(false)
	walk(5500,"r")
	walk(5000,"f")
	walk(1500,"l")
	walk(300,"b")
	walk(400,"l")
	walk(4500,"f")
	SendSpace()
	walkhold("f","Down")
	sleep 3000
	camrotate(2,"r")
	sleep 4000
	camrotate(2,"r")
	sleep 5000
	Send {Shift}
	camrotate(4,"r")
	SendSpace()
	Send {Shift}
	sleep 175
	camrotate(2,"l")
	sleep 5000
	walkhold("f","Up")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab blue booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

redbooster(){
	EventLog("Going to claim red booster")
	sunf(false)
	walk(4000,"r")
	walk(5000,"f")
	SendSpace()
	walk(4000,"r")
	walk(2000,"b")
	walk(500,"l")
	walk(500,"b")
	walk(2000,"r")
	walk(3000,"f")
	walk(50,"b")
	walk(2000,"l")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab red booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

mondo(){
	GuiControlGet,mondokilltype
	if (mondokilltype = "No Kill"){
		return
	}
	EventLog("Going to Mondo")
	Reset()
	walktocannon()
	camrotate(2,"r")
	send e
	sleep 1900
	send {Shift}
	sendSpace()
	sendSpace()
	sleep 250
	send {Shift}
	sendSpace()
	sleep 2000
	walk(250,"f")
	walk(300,"b")
	if (mondokilltype = "Blessing"){
		sleep 60000
		return
	}
	if (mondokilltype = "Loot"){
		walk(500,"f")
		walk(2400,"l")
		walk(1000,"r")
		camrotate(2,"r")
		walk(250,"b")
		walk(4500,"r")
		walk(1000,"f")
		walk(250,"l")
		walk(500,"f")
		walk(250,"r")
		walk(2000,"l")
		timer := A_TickCount
		while (1){
			if (SearchFunction("DeadMondo.png",10)[1] = 0){
				walk(2000,"r")
				walk(3250,"f")
				loop 5{
					walk(200,"l")
					walk(2500,"b")
					walk(200,"l")
					walk(2500,"f")
				}loop 5{
					walk(200,"r")
					walk(2500,"b")
					walk(200,"r")
					walk(2500,"f")
				}
				Eventlog("Succesfully looted mondo 👍")
				return
			}
			if (A_TickCount - timer > 600000){
				Errorlog("Failed to loot mondo because couldn't find dead mondo image after 10 minutes")
				return
			}
		}
	}
} 

WealthClock(){
	Reset()
	walktocannon()
	EventLog("Going To WealthClock")
	camrotate(1,"l")
	send e
	sleep 1425
	send {Shift}
	sendSpace()
	sendSpace()
	sleep 200
	send {Shift}
	sleep 7800
	camrotate(1,"l")
	walk(3000,"r")
	walk(3000,"f")
	Send {Shift}
	SendSpace()
	Send {Shift}
	Send {w up}
	Send {z up}
	walk(3000,"l")
	sleep 100
	Send {a up}
	Send {q up}
	SendSpace()
	walk(500,"b")
	walk(150,"l")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		if (A_TickCount - previousreconnect > 3600000){
			ErrorLog("Failed to grab Wealth Clock")
		}
	}
	sleep 1000
	Send e
	sleep 1000
}

ant(){
	Reset()
	walktocannon()
	EventLog("Going To AntPass")
	Send e
	Send {Shift}
	SendSpace()
	sleep 800
	Send {Shift}
	sleep 600
	SendSpace()
	sleep 7200
	SendSpace()
	sleep 3000
	walk(2000,"f")
	walk(7000,"l")
	walk(1000,"b")
	walk(750,"r")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab ant pass")
	}
	sleep 1000
	Send e
	sleep 1000
}

samovar(){
	Reset()
	walktocannon()
	EventLog("Going To samovar")
	camrotate(2,"l")
	send e
	sleep 1800
	send {Shift}
	sendSpace()
	sendSpace()
	sleep 200
	send {Shift}
	sleep 4800
	sendSpace()
	camrotate(2,"l")
	walkhold("f","Down")
	sleep 7000
	sendSpace()
	sleep 5000
	sendSpace()
	sleep 800
	walkhold("f","Up")
	camrotate(1,"r")
	sendSpace()
	walk(700,"f")
	breaktimer := A_TickCount
	while (1){
		If (SearchFunction("e.png",10)[1] = 0){
			EventLog("Succesfully Claimed Samovar")
			send e
			sleep 5000
			walk(500,"f")
			walk(600,"l")
			loop 3{
				walk(125,"b")
				walk(750,"r")
				walk(125,"b")
				walk(750,"l")
			}
			break
		}
		if (A_TickCount - breaktimer > 10000){
			ErrorLog("Failed To Collect Samovar")
			break
		}
	}
}

candles(){
	r(true)
	Reset()
	walktocannon()
	EventLog("Going To Candles")
	camrotate(1,"r")
	send e
	sleep 1000
	send {Shift}
	sendSpace()
	sendSpace()
	sleep 300
	send {Shift}
	sleep 5000
	sendSpace()
	camrotate(1,"r")
	sleep 2000
	walk(2200,"f")
	camrotate(1,"l")
	walk(5000,"f")
	breaktimer := A_TickCount
	while (1){
		walk(100,"b")
		If (SearchFunction("e.png",10)[1] = 0){
			EventLog("Succesfully Claimed Candles")
			send e
			sleep 5000
			camrotate(1,"r")
			walk(250,"f")
			walk(750,"l")
			walk(1500,"r")
			break
		}
		if (A_TickCount - breaktimer > 4000){
			ErrorLog("Failed To Collect Candles")
			break
		}
	}
}

feast(){
	r(true)
	reset()
	walktocannon()
	EventLog("Going To Feast")
	camrotate(4,"r")
	send e
	send {Shift}
	sendSpace()
	sleep 1100
	sendSpace()
	sleep 2000
	sendSpace()
	sleep 1000
	walk(500,"b")
	walk(1000,"f")
	walk(4000,"l")
	walk(1000,"f")
	walk(200,"r")
	SendSpace()
	walk(600,"f")
	send {Shift}
	breaktimer := A_TickCount
	while (1) {
		If (SearchFunction("e.png",10)[1] = 0){
			send e
			sleep 5000
			EventLog("Succesfully Looted Feast")
			camrotate(1,"r")
			walk(100,"b")
			walk(300,"r")
			walk(400,"f")
			walk(600,"l")
			walk(500,"b")
			walk(300,"r")
			break
		}if (A_TickCount - breaktimer > 10000){
			ErrorLog("Failed To Detect Feast button")
			break
		}
	}
}

stocking(){
	Send {Shift}
	walk(2500,"b")
	walk(1350,"r")
	Send {Space Down}
	walk(3000,"f")
	Send {Space up}
	sleep 500
	walk(1500,"l")
	Send {Shift}
	walk(1400,"b")
	breaktimer := A_TickCount
	while (A_TickCount - breaktimer < 5000){
		walk(100,"b")
		if (SearchFunction("e.png",10)[1] = 0){
			Send {Shift}
			Send e
			walk(125,"r")
			Send {Space Down}
			walk(2500,"f")
			Send {Space up}
			sleep 500
			walk(1000,"r")
			walk(50,"l")
			walk(3500,"b")
			Send {Shift}
		}
	}
}

gingerhouse(){
	sunf(false)
	walk(4000,"b")
	walk(100,"r")
	loop 40{
		walk(30,"f")
		Send e
	}
}

lidart(){
	Eventlog("going to lidart")
	r(true)
	mountain(true)
	camrotate(4,"r")
	walk(3000,"f")
	walk(2500,"l")
	walk(650,"r")
	walk(7000,"f")
	Sendspace()
	walk(5000,"f")
	SendSpace()
	breaktimer := A_TickCount
	while(A_TickCount - breaktimer < 3000){
		walk(100,"f")
		if (SearchFunction("e.png",10)[1] = 0){
			Eventlog("grabbed lidart")
			send e
			sleep 5000
			walk(500,"f")
			walk(250,"l")
			loop 5{
				walk(150,"b")
				walk(750,"r")
				walk(150,"b")
				walk(750,"l")
			}
			break
		}
	}
}

cogpass(){
	Eventlog("going to lidart")
	r(true)
	mountain(true)
	camrotate(4,"r")
	walk(3000,"f")
	walk(2500,"l")
	walk(250,"r")
	walk(2150,"f")
	camrotate(2,"l")
	Sendspace()
	walk(1250,"f")
	walk(500,"l")
	walkhold("f","Down")
	loop 300{
		sleep 10
		Send e
	}
	walkhold("f","Up")
}

mountainbooster(){
	EventLog("Going to mountain booster")
	Reset()
	walktocannon()
	Send e
	sleep 6000
	walk(7000,"r")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to grab mountain booster")
	}
	sleep 1000
	Send e
	sleep 1000
}

GoDoAnt(){
	walk(5000,"f")
	walk(400,"b")
	WinGetPos , windowX, windowY, windowWidth, windowY, Roblox
	winUp := windowY/3
	loop 23{
		ImageSearch,foundx,foundy,0,0,A_ScreenWidth,windowY,*20 Macro parts/images/e.png 
		if (errorlevel = 0){
			EventLog("succesfully did ant")
			Send e
			mousemove,A_ScreenWidth/2,A_ScreenHeight/2
			Send {Click Left Down}
			sleep 2000
			walk(3000,"b")
			walk(300,"f")
			placesprinkler()
			breakytimer := A_TickCount
			while (1){
				if (SearchFunction("keepold.png",20)[1] = 0){
					Send {Click Left Up}
					sleep 1000
					mouseMove,SearchFunction("keepold.png",20)[2],SearchFunction("keepold.png",20)[3]
					sleep 1000
					Send {click Left}
					return
				}
				if (A_TickCount - breakytimer > 330000){
					Reconnect()
					if (tier = 1){
						GuiControlGet,pineconvhive
						if (pineconvhive){
							Reset()
						}
					}
					ErrorLog("[RECONNECT] Reconnected (Cause : Still hasn't died in ant after 5 and a half minutes)")
					return
				}
				
			}
			Send {Click Left Up}
			Reconnect()
			if (tier = 1){
				GuiControlGet,pineconvhive
				if (pineconvhive){
					Reset()
				}
			}
			return
		}
		else{
			walk(75,"r")
		}
	}
	ErrorLog("failed to play ant")
}

bugrun(){
	Reset()
	Reset()
	walk(7000,"r")
	SendSpace()
	walk(100,"r")
	sleep 100
	walk(1000,"r")
	walk(5250,"b")
	SendInput {PGDN}
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	SendInput {PGUP}
	placesprinkler()
	Clicker(20000)
	walk(2500,"r")
	SendSpace()
	walk(2000,"r")
	walk(1000,"f")
	walk(2750,"b")
	camrotate(2,"l")
	Send oooooo
	placesprinkler()
	if (viccheck(false)[1] = true){
		return
	}
	walk(1000,"b")
	Clicker(10000)
	squares(250,false)
	walk(250,"r")
	walk(1000,"f")
	loop 30{
		walk(100,"f")
		walk(100,"l")
	}
	camrotate(3,"l")
	walk(7000,"f")
	camrotate(1,"r")
	walk(7500,"f")
	walk(200,"b")
	placesprinkler()
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	Clicker(10000)
	squares(250,false)
	walk(5000,"f")
	walk(11000,"r")
	walk(8000,"b")
	walk(2000,"l")
	walk(150,"f")
	walk(150,"r")
	sleep 500
	loop 2{
		Send e
		sleep 2500
		mouseMove,A_ScreenWidth/2,A_ScreenHeight/1.3
		loop 30{
			Send {Click Left}
			sleep 100
		}
	}
	walk(1000,"f")
	walk(1000,"l")
	SendSpace()
	walk(750,"l")
	sleep 1500
	SendInput {PGDN}
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	SendInput {PGUP}
	placesprinkler()
	Clicker(10000)
	loop 40{
		walk(100,"f")
		Send {Click Left}
	}
	placesprinkler()
	Clicker(10000)
	walk(4000,"f")
	walk(4000,"r")
	walk(4000,"b")
	walk(500,"l")
	walk(3000,"b")
	walk(1000,"l")
	SendInput {PGDN}
	camrotate(2,"r")
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	camrotate(2,"l")
	SendInput {PGUP}
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(3000,"f")
	walk(2000,"r")
	walk(100,"l")
	sleep 200
	SendSpace()
	walk(2500,"r")
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(2000,"f")
	walk(4000,"r")
	walk(1000,"b")
	walk(3500,"r")
	SendInput {PGDN}
	camrotate(2,"l")
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	SendInput {PGUP}
	camrotate(4,"l")
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(4500,"f")
	walk(4000,"l")
	walk(5000,"b")
	walk(4000,"r")
	walk(3000,"f")
	walk(100,"b")
	sleep 200
	SendSpace()
	walk(1500,"f")
	walk(750,"r")
	walk(50,"b")
	sleep 200
	SendSpace()
	walk(3000,"f")
	camrotate(2,"l")
	walk(8000,"f")
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(4000,"f")
	walk(5000,"r")
	walk(12000,"b")
	walk(3000,"l")
	walk(2000,"b")
	walk(2000,"r")
	camrotate(4,"l")
	SendSpace()
	walk(3000,"f")
	walk(1000,"l")
	walk(5000,"f")
	walk(4500,"r")
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(3000,"b")
	camrotate(2,"r")
	placesprinkler()
	Clicker(10000)
	squares(250,false)
	walk(1000,"f")
	walk(2500,"l")
	walk(2500,"f")
	walk(2000,"r")
	walk(4000,"f")
	walk(750,"b")
	walk(500,"l")
	walk(500,"f")
	Send {Shift}
	walk(4000,"l")
	Send {Shift}
	SendInput {PGDN}
	Send oooooo
	if (viccheck(false)[1] = true){
		return
	}
	SendInput {PGUP}
	placesprinkler()
	Clicker(20000)
	walk(100,"b")
	walk(7000,"r")
	walk(1000,"f")
	walk(750,"b")
	walk(500,"l")
	walk(750,"f")
	SendSpace()
	walk(1500,"f")
	walk(1000,"l")
	walk(1500,"f")
	placesprinkler()
	squares(250,false)
	squares(250,false)
}

stingerrun(){
	global vicfield := ""
	EventLog("Running Stinger Run")
	;pepper start
	pep(false)
	walk(2500,"r")
	walk(1500,"f")
	walk(2500,"l")
	walk(900,"b")
	walk(1500,"r")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in pepper")
		return
	}
	;mountain start
	global vicfield := "mountain"
	mountain(true)
	walk(350,"b")
	walk(750,"l")
	walk(2500,"f")
	walk(900,"r")
	walk(2500,"b")
	walk(900,"r")
	walk(2500,"f")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in mountain")
		return
	}
	;rose start
	global vicfield := "rose"
	Reset()
	walk(7000,"r")
	SendSpace()
	walk(100,"r")
	sleep 100
	walk(1000,"r")
	walk(5250,"b")
	walk(2250,"r")
	SendSpace()
	walk(2000,"r")
	walk(1000,"f")
	camrotate(2,"r")
	walk(1750,"r")
	walk(2750,"f")
	walk(1250,"r")
	walk(2750,"b")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in rose")
		return
	}
	global vicfield := ""
	;cactus start
	camrotate(2,"r")
	walk(1500,"r")
	Send {Shift}
	walk(2500,"b")
	Send {Shift}
	walk(150,"r")
	walk(7000,"f")
	walk(100,"l")
	walk(500,"b")
	Send {Shift}
	walk(2250,"l")
	camrotate(2,"r")
	Send {Shift}
	walk(125,"f")
	camrotate(2,"l")
	Send {Shift}
	walk(3900,"f")
	walk(1500,"r")
	walk(2000,"b")
	walk(2500,"f")
	walk(250,"r")
	walk(2000,"b")
	walk(2000,"r")
	Send {Shift}
	camrotate(2,"r")
	walk(1000,"l")
	walk(75,"f")
	walk(1000,"r")
	walk(200,"l")
	walk(6000,"f")
	Send {Shift}
	camrotate(2,"l")
	walk(1500,"f")
	camrotate(2,"l")
	walk(500,"f")
	walk(500,"r")
	camrotate(4,"r")
	walk(1000,"f")
	walk(1000,"r")
	camrotate(4,"r")
	Send {Shift}
	camrotate(4,"r")
	walk(4000,"b")
	walk(555,"r")
	walk(1500,"f")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in cactus")
		return
	}
	;spider start
	walk(5000,"f")
	walk(1000,"l")
	Send {Shift}
	camrotate(2,"r")
	sleep 100
	Send {Shift}
	camrotate(2,"l")
	walk(1750,"r")
	sleep 750
	walk(1500,"l")
	walk(1000,"f")
	walk(750,"b")
	walk(1000,"r")
	walk(3000,"f")
	walk(1750,"r")
	walk(2500,"b")
	walk(825,"l")
	walk(1500,"f")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in spider")
		return
	}
	;clover start
	global vicfield := "clover"
	Reset()
	walk(750,"f")
	Send {Shift}
	walk(8000,"l")
	camrotate(2,"l")
	walk(4000,"l")
	walk(75,"r")
	SendSpace()
	walk(1000,"l")
	Send {Shift}
	walk(3000,"f")
	SendSpace()
	walk(2000,"f")
	walk(2000,"r")
	walk(1000,"l")
	SendSpace()
	walk(3000,"f")
	walk(1000,"l")
	walk(2000,"b")
	walk(1000,"l")
	walk(2000,"f")
	if (fightcheck()[1] = true){
		Eventlog("Killed a vicious bee in clover")
		return
	}
}

cocodisp(){
	Eventlog("Running coco disp")
	coco(false)
	walk(3000,"f")
	Send {Shift}
	camrotate(2,"l")
	sleep 100
	Send {Shift}
	camrotate(2,"r")
	walk(7000,"l")
	Send {Shift}
	walk(3000,"f")
	Send {Shift}
	walk(3000,"r")
	camrotate(2,"r")
	WinGetPos , windowX, windowY, windowWidth, windowY, Roblox
	WindowY := windowY/3
	xd := false
	loop 20{
		ImageSearch,foundx,foundy,0,0,A_ScreenWidth,WindowY,*10 images/e.png
		if (errorlevel = 0){
			Send e
			sleep 3000
			ImageSearch,foundx,foundy,0,0,A_ScreenWidth,WindowY,*10 images/e.png
			if (errorlevel = 0){
				ErrorLog("Failed to collect coconut dispensor /// E button was detected twice so cause = path error")
				Reconnect()
				if (tier = 1){
					GuiControlGet,pineconvhive
					if (pineconvhive){
						Reset()
					}
				}
				return
			}
			xd := true
			break
		}else{
			walk(50,"r")
		}
	}
	if (xd = false){
		ErrorLog("Failed to collect coconut dispensor")
	}
}

gluedisp(){
	counter := 0
	Startgluedisp:
	counter++
	if (counter < 4){
		Reset()
		walktocannon()
		Eventlog("Going to Glue dispensor")
		Send e
		Send {Shift}
		SendSpace()
		sleep 800
		Send {Shift}
		sleep 600
		SendSpace()
		sleep 7200
		SendSpace()
		sleep 3000
		walk(2000,"f")
		walk(7000,"l")
		walk(1000,"b")
		walk(750,"r")
		walk(2500,"f")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(2500,"l")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(5000,"f")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(7000,"r")
		Send {Shift}
		sleep 100
		Send {Shift}
		walk(400,"l")
		walk(3000,"b")
		
		mousemove,40,200
		loop 40{
			Send {WheelUp}
			sleep 5
		}
		sleep 500
		if not (SearchFunction("ticket.png","10")[1] = 0){
			mousemove,40,140
			sleep 100
			Send {Click Left}
			mousemove,40,200
			loop 40{
				Send {WheelUp}
				sleep 5
			}
			sleep 500
		}
		if (SearchFunction("ticket.png","10")[1] = 0){
			loop 30{
				if (SearchFunction("gumdrop.png","10")[1] = 0){
					goto,exitloooop
				}
				mousemove,40,200
				sleep 250
				Send {WheelDown}
			}
			mousemove,40,140
			sleep 100
			Send {Click Left}
			return
		}else{
			return
		}
		exitloooop:
		
		Send {Space Down}
		timer := A_TickCount
		while (1){
			if (SearchFunction("gummybee.png",20)[1] = 0){
				
				mousemove,SearchFUnction("gumdrop.png","10")[2],SearchFUnction("gumdrop.png","10")[3]
				sleep 250
				Send {Click Left Down}
				mousemove,A_ScreenWidth/2,A_ScreenHeight/2
				sleep 250
				Send {Click Left Up}
				mousemove,40,140
				sleep 100
				Send {Click Left}
				
				Send {Space Up}
				break
			}
			if (A_TickCount - timer > 15000){
				Errorlog("Failed to find gummy bee")
				Send {Space Up}
				Reconnect()
				goto,Startgluedisp
			}
			walk(100,"b")
		}
		sleep 1500
		walk(2000,"f")
		walk(150,"b")
		sleep 500
		if (SearchFunction("e.png",10)[1] = 0){
			Send e
			EventLog("Succesfully did glue dispensor")
			return
		}else{
			Errorlog("Failed to detect e.png of the glue dispensor")
			safetycheck()
			goto,Startgluedisp
		}
	}else{
		Errorlog("Failed to do glue dispensor after 3 attempts")
	}
}

kingbeetle(){
	EventLog("Going to kill kingbeetle")
	bluf(false)
	walk(3000,"r")
	walk(6000,"f")
	camrotate(1,"r")
	walk(1750,"b")
	camrotate(1,"r")
	walk(2500,"f")
	camrotate(2,"l")
	walk(2500,"b")
	variablename := 1750
	sidewayssize := variablename/7.5
	returnsize := sidewayssize*7.5
	sidewayssizez := sidewayssize
	forwardsize := variablename
	loop 4{
		walk(sidewayssizez,"r")
		walk(forwardsize,"f")
		walk(sidewayssize,"r")
		walk(variablename,"b")
	}
	walk(returnsize,"l")
	walk(variablename,"f")
	loop 4{
		walk(sidewayssize,"r")
		walk(variablename,"b")
		walk(sidewayssize,"r")
		walk(variablename,"f")
	}
	walk(returnsize,"l")
	walk(variablename,"b")
	
	if (SearchFunction("keepold.png",20)[1] = 0){
		Send {Click Left Up}
		sleep 1000
		mouseMove,SearchFunction("keepold.png",20)[2],SearchFunction("keepold.png",20)[3]
		sleep 1000
		Send {click Left}
		return
	}
}

tunnelbear(){
	Eventlog("Going to kill tunnelbear")
	r(true)
	Reset()
	walktocannon()
	camrotate(2,"l")
	Send e
	Sleep 100
	SendSpace()
	sleep 900
	Send {Shift}
	SendSpace()
	sleep 300
	Send {Shift}
	sleep 6700
	walk(2500,"r")
	walk(3000,"b")
	walk(3000,"l")
	SendInput {PGUP}
	SendInput {PGUP}
	SendInput {PGUP}
	SendInput {PGUP}
	walk(1000,"f")
	walk(300,"l")
	walk(500,"b")
	walk(5000,"l")
	SendInput {PGDN}
	SendInput {PGDN}
	SendInput {PGDN}
	SendInput {PGDN}
	camrotate(4,"r")
	sleep 100
	Send ooooooooo
	walk(3100,"b")
	loop 20{
		sleep 2000
		walk(500,"b")
	}
}

screenboards(){
	r(true)
	Reset()
	walk(750,"f")
	walk(8000,"r")
	camrotate(4,"r")
	Send {Shift}
	walk(2500,"r")
	Send {Shift}
	walk(2250,"f")
	Send oooooooooo
	SendInput {PGDN}
	Send {Lwin Down}
	SendInput {PrintScreen}
	Send {Lwin Up}
}

pinewalktohive(){
	if (turncam){
		camrotate(turnangle/45,"l")
	}
	sleep 100
	camrotate(1,"r")
	walkhold("r","Down")
	walkhold("f","Down")
	sleep 4000
	walkhold("f","Up")
	sleep 8000
	walkhold("r","Up")
	camrotate(4,"r")
	Send {Shift}
	sleep 100
	Send {Shift}
	walk(8000,"f")
	walk(1000,"r")
	walkhold("f","Down")
	Send {Shift}
	SendSpace()
	sleep 300
	SendSpace()
	sleep 1000
	walkhold("f","Up")
	sleep 7000
	Send {Shift}
	walk(2000,"f")
	walk(390,"b")
	loop 16{
		if (SearchFunction("e.png","10")[1] = 0){
			
			Send ooooooooo
			loopbreak := A_TickCount
			if (convert < 2){
				Send e
				zzz := false
				while (1){
					if (SearchFunction("e.png",40)[1] = 1){
						if (zzz = true){
							sleep 5000
						}
						break
					}
					zzz := true
					if (A_TickCount - loopbreak > 360000){
						break
					}
					safetycheck()
				}	
			}
			walk(750,"f")
			global convertedd := true
			return
		}else{
			walk(50,"l")
		}
	}
	loop 80{
		if (SearchFunction("e.png","10")[1] = 0){
			
			Send ooooooooo
			loopbreak := A_TickCount
			if (convert < 2){
				Send e
				zzz := false
				while (1){
					if (SearchFunction("e.png",40)[1] = 1){
						if (zzz = true){
							sleep 5000
						}
						break
					}
					zzz := true
					if (A_TickCount - loopbreak > 360000){
						break
					}
					safetycheck()
				}	
			}
			walk(750,"f")
			global convertedd := true
			return
		}else{
			walk(50,"r")
		}
	}
	Errorlog("Couldn't find E button to convert at hive")
	Reset()
}

buyplayant(){
	Reset()
	walktocannon()
	EventLog("Going To AntPass")
	Send e
	Send {Shift}
	SendSpace()
	sleep 200
	Send {Shift}
	sleep 1200
	SendSpace()
	sleep 7200
	SendSpace()
	sleep 3000
	walk(2000,"f")
	walk(7000,"l")
	walk(500,"f")
	sleep 1000
	if (SearchFunction("e.png",10)[1] = 1){
		ErrorLog("Failed to purchase ant pass")
	}
	sleep 1000
	Send e
	sleep 1000
	GoDoAnt()
}

shrine(){
	EventLog("Going to do shrine")
	savedata()
	donationitem := "Shrine" . itemtodonate . ".png"
	clicks := donationamount - 1
	mousemove,140,140
	Send {click}
	sleep 100
	mousemove,140,140
	Send {click}
	sleep 250
	mousemove,250,140
	Send {Click}
	sleep 500
	if (SearchFunction("cub.png",10)[1] = 0){
		mousemove,SearchFunction("cub.png",10)[2],SearchFunction("cub.png",10)[3]
		sleep 200
		Send {Click}
		sleep 500
		if (SearchFunction("off.png",10)[1] = 0){
			mousemove,SearchFunction("off.png",10)[2],SearchFunction("off.png",10)[3]
			sleep 200
			Send {Click}
			sleep 500
		}
	}
	
	r(true)
	Reset()
	walktocannon()
	walkhold("r","Down")
	sleep 4000
	SendSpace()
	sleep 1500
	walkhold("r","Up")
	walkhold("f","Down")
	sleep 2000
	SendSpace()
	sleep 3000
	SendSpace()
	sleep 1000
	SendSpace()
	sleep 4000
	walkhold("f","up")
	camrotate(4,"r")
	Send {Shift}
	walk(75,"f")
	camrotate(4,"r")
	Send ooooo
	sleep 50
	Send {Shift}
	SendSpace()
	walk(4000,"f")
	walk(1000,"r")
	walk(100,"b")
	SendSpace()
	walkhold("r","Down")
	walk(6000,"f")
	sleep 1700
	
	
	walkhold("r","Up")
	Send {Shift}
	camrotate(3,"l")
	walk(75,"f")
	sleep 50
	Send {Shift}
	camrotate(3,"l")
	walkhold("r","Down")
	sleep 1200
	camrotate(2,"l")
	SendSpace()
	sleep 600
	walkhold("r","Up")
	walk(800,"r")
	walk(1100,"b")
	camrotate(2,"r")
	
	
	walk(5000,"r")
	camrotate(2,"l")
	Send {Shift}
	SendSpace()
	sleep 400
	walk(150,"f")
	Send {Shift}
	camrotate(2,"r")
	sleep 300
	SendSpace()
	walk(500,"r")
	breaktime := A_TickCount
	while (1){
		if (SearchFunction("e.png",10)[1] = 0){
			break
		}else{
			walk(50,"r")
		}
		if (A_TickCount - breaktime > 10000){
			ErrorLog("Failed to do shrine /// Cause : Failed to arrive at donation pad")
			Reconnect()
			cubon()
			return
		}
	}
	sleep 250
	Send e
	sleep 2000
	mouseMove,A_ScreenWidth/2,A_ScreenHeight/1.3
	sleep 250
	Send {Click Left}
	maxshrinetrytime := A_TickCount
	while (1){
		sleep 500
		if (SearchFunction(donationitem,10)[1] = 0){
			sleep 2500
			if (SearchFunction(donationitem,10)[1] = 0){
				sleep 500
				mousemove,SearchFunction("ShrineAdd.png",10)[2],SearchFunction("ShrineAdd.png",10)[3]
				sleep 250
				loop %clicks%{
					Send {Click Left}
					sleep 5
				}
				break
			}
		}else{
			mousemove,SearchFunction("ShrineArrow.png",10)[2],SearchFunction("ShrineArrow.png",10)[3]
			sleep 250
			Send {Click Left}
		}
		if (A_TickCount - maxshrinetrytime > 60000){
			ErrorLog("Failed to do shrine /// Cause : Failed to find donation item")
			Reconnect()
			cubon()
			return
		}
	}
	maxdonatebuttonsearchtime := A_TickCount
	while (1){
		if (SearchFunction("ShrineDonate.png",10)[1] = 0){
			mousemove,SearchFunction("ShrineDonate.png",10)[2],SearchFunction("ShrineDonate.png",10)[3]
			sleep 250
			Send {Click Left}
			break
		}
		if (A_TickCount - maxdonatebuttonsearchtime > 5000){
			Errorlog("Failed to do shrine /// cause : Failed to find donate button")
			Reconnect()
			cubon()
			return
		}
	}
	sleep 2000
	mouseMove,A_ScreenWidth/2,A_ScreenHeight/1.3
	sleep 250
	loop 20{
		Send {Click Left}
		sleep 5
	}
	sleep 2500
	walk(500,"f")
	walk(1000,"l")
	walk(2000,"r")
	walk(250,"b")
	walk(2000,"l")
	walk(250,"b")
	walk(2000,"r")
	walk(250,"b")
	walk(2000,"l")
	walk(250,"b")
	walk(2000,"r")
	walk(250,"b")
	walk(2000,"l")
	cubon()
	EventLog("Succesfully donated to shrine")
}
