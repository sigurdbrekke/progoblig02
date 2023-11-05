# Starter med en utregning av proporsjonene i norgesflagget og færøyene sitt flaggm da de begge deler 16:22 og like linjer.
fun tegn-norge() -> Image:
  nh = 16
  nw = 22
  norfor-w = 200
  norfor-h = (norfor-w * nh) / nw
#Utregning av proporsjoner av blå linjer
  bsver1 = (2 * norfor-h) / nh 
  bshor1 = (2 * norfor-w) / nw
#Utregning av proporsjoner av white linjer
  whitehor1 = (4 * norfor-h) / nh
  whitever1 = (4 * norfor-w) / nw

#videre spesifisering av linjene, så det blir færrest mulig tall i funksjonen
  bl-ver = rectangle(bsver1, 145.45, "solid", "dark blue")
  bl-hor = rectangle(200, bshor1, "solid", "dark blue")
  wh-ver = rectangle(200, whitever1, "solid", "white")
  wh-hor = rectangle(whitehor1, 145.45,  "solid", "white")
  norgesflagget = empty-scene(200, 145.45)
  norge-bakgrunn = rectangle(200, norfor-h, "solid", "crimson")
  
#selve funksjonen
  put-image(bl-ver, 72, 72.72,
    put-image(bl-hor, 100, 72.725,
      put-image(wh-ver, 100, 72.725,
        put-image(wh-hor, 72.725, 72.725,
          put-image(norge-bakgrunn, 100, 72.725,
            norgesflagget)))))
end

#siden færøyene har like proporsjoner vil jeg bare gjenta, men med endring av fargene.

fun tegn-faroe() -> Image:
  fh = 16
  fw = 22
  for-w = 200
  for-h = (for-w * fh) / fw
  frver1 = (2 * for-h) / fh
  frhor1 = (2 * for-w) / fw
  fbver1 = (4 * for-h) / fh
  fbhor1 = (4 * for-w) / fw
  
  forredver = rectangle(frver1, 145.45, "solid", "crimson")
  forredhor = rectangle(200, frhor1, "solid", "crimson")
  forbluever = rectangle(200, fbver1, "solid","dark-blue")
  forbluehor = rectangle(fbhor1, 200, "solid", "dark-blue")
  faroeflagget = empty-scene(200, 145.45)
  faroebakgrunn = rectangle(200, for-h, "solid", "white")
  
  put-image(forredver, 72, 72.72,
    put-image(forredhor, 100, 72.725,
      put-image(forbluever, 100, 72.725,
        put-image(forbluehor, 72.725, 72.725,
          put-image(faroebakgrunn, 100, 72.725, faroeflagget)))))
end
  
fun tegn-finnland() -> Image:
  finh = 11
  finw = 18
  fin-w = 250
  fin-h = (fin-w * finh) / finw
  finver1 = (3 * fin-h) / finh
  finhor1 = (3 * fin-w) / finw
  
  finnbluever = rectangle(finver1, 200, "solid", "dark-blue")
  finnbluehor = rectangle(250, finhor1, "solid", "dark-blue")
  finnflagget = empty-scene(250, 152.7)
  finnbakgrunn = rectangle(200, 152.7, "solid", "white")
  
  put-image(finnbluever, 90.27, 53.53,
    put-image(finnbluehor, 125, 76.35,
      put-image(finnbakgrunn, 250, 152.7, finnflagget)))
end

fun tegn-danmark() -> Image:
  danh = 28
  danw = 37
  dan-w = 250
  dan-h = (dan-w * danh) / danw
  danver1 = (4 * dan-h) / danh
  danhor1 = (4 * dan-w) / danw
  
  danskver = rectangle(danver1, 200, "solid", "white")
  danskhor = rectangle(250, danhor1, "solid", "white")
  danskeflagget = empty-scene(250, 152.7)
  danskbakgrunn = rectangle(500, 305.4, "solid", "red")
  
  put-image(danskver, 90.27, 53.53,
    put-image(danskhor, 125, 76.35,
      put-image(danskbakgrunn, 250, 152.7, danskeflagget)))
end

fun tegn-sverige() -> Image:
  sveh = 10
  svew = 16
  sve-w = 250
  sve-h = (sve-w * sveh) / svew
  svever1 = (2 * sve-h) / sveh
  svehor1 = (2 * sve-w) / svew
  
  svenskver = rectangle(svever1, 200, "solid", "yellow")
  svenskhor = rectangle(250, svehor1, "solid", "yellow") 
  svenskflagg = empty-scene(250, 152.7)
  svenskbakgrunn = rectangle(500, 305.4, "solid", "royal-blue")
  
  put-image(svenskver, 90.27, 53.53, 
    put-image(svenskhor, 125, 76.35,
      put-image(svenskbakgrunn, 250, 152.7, svenskflagg)))
end

fun tegn-island() -> Image:
  islandh = 18
  islandw = 25
  island-w = 250
  island-h = (island-w * islandh) / islandw
  islandhvitver1 = (4 * island-h) / islandh
  islandhvithor1 = (4 * island-w) / islandw
  islandredver1 = (2 * island-h) / islandh
  islandredhor1 = (2 * island-w) / islandw
  
  islandhvitdver = rectangle(islandhvitver1, 200, "solid", "white")
  islandhvithor = rectangle(250, islandhvithor1, "solid", "white")
  islandredver = rectangle(islandredver1, 200, "solid", "crimson")
  islandredhor = rectangle(250, islandredhor1, "solid", "crimson")
  islandbakgrunn = rectangle(500, 305.4, "solid", "dark-blue")
  islandflagg = empty-scene(250, 152.7)
  
  put-image(islandredver, 90.27, 53.53,
    put-image(islandredhor, 125, 76.35,
      put-image(islandhvithor, 125, 76.35,
        put-image(islandhvitdver, 90, 76.35,
          put-image(islandbakgrunn, 250, 152.7, islandflagg)))))
end
