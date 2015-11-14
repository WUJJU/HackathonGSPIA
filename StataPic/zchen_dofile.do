list mediumid medium
labmask mediumid, values(medium)
describe mediumid medium
list
label list
list horoscopeid horoscope
labmask horoscopeid, values(horoscope)
describe horoscopeid horoscope
list
label list

*graph pie if horoscopeid==1 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by rats) 
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope1.png, as(png)

*graph pie if horoscopeid==2 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by ox)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope2.png, as(png)

*graph pie if horoscopeid==3 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by tigers)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope3.png, as(png)

*graph pie if horoscopeid==4 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by rabbits)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope4.png, as(png)

*graph pie if horoscopeid==5 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by dragons)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope5.png, as(png)

*graph pie if horoscopeid==6 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by snakes)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope6.png, as(png)

*graph pie if horoscopeid==7 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by horse)
*graph export C:\Users\Zi1qiao\Documents\CMOA\graph\mediumbyhoroscope7.png, as(png)

*graph pie if horoscopeid==8 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by goats)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope8.png, as(png)

*graph pie if horoscopeid==9 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by monkeys)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope9.png, as(png)

*graph pie if horoscopeid==10 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by roosters)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope10.png, as(png)

*graph pie if horoscopeid==11 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by dogs)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope11.png, as(png)

*graph pie if horoscopeid==12 & medx>=500, over(mediumid) sort descending pie(1, explode color(blue)) plabel(_all name,gap(-5)  color(white)) plabel(1 percent,gap(5) color(white))legend(off) title("Media of Artworks") subtitle(used by pigs)
*graph export C:\Users\Ziqiao\Documents\CMOA\graph\mediumbyhoroscope12.png, as(png)

forvalues i=1(1)12 {
	drop hor`i'
}

forvalues i=1(1)12 {
	generate hor`i'=1 if horoscopeid==`i'
	replace hor`i'=0 if hor`i'==.
}
generate pencilonpaper=1 if mediumid==32
replace pencilonpaper=0 if pencilonpaper==.
probit pencilonpaper hor1 hor2 hor3 hor4 hor5 hor6 hor7 hor8 hor9 hor10 hor11 hor12
