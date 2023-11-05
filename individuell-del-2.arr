# dcic-2021 ble lagt til som en del av oppgave C), og vil bli brukt videre i D) og E)
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

# Oppgave A)
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
Energiforbrukstabellen =load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
  sanitize energi using string-sanitizer
end

# Oppgave B), utfordring å få syntaksen til å fungere.
fun energi-to-number(s :: String) -> Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => 0
  end

where:
  energi-to-number("") is 0
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4") is 4

end

# Oppgave C), transformerer energiforbrukstabellen
ny_utslippstabell = transform-column(Energiforbrukstabellen, "energi", energi-to-number)


fun sum-on-energi():
  t = transform-column(Energiforbrukstabellen, "energi", energi-to-number)
  
  sum(t, "energi")

end

# for oppgave D) har jeg valgt et generelt utslipps-antall, da og er tatt utifra finnske kjøreturer med utslipp på 0.85,3g utslipp per kilometer, kWh var vanskelig å finne. 

utslippstabell-finnland = transform-column(ny_utslippstabell, "bil", energi-to-number)

distanse = 15
distanse-per-drivstoff-enhet = 1.5
energi-per-enhet = 2

energy-per-dag = ( distanse / distanse-per-drivstoff-enhet ) * energi-per-enhet

fun addbil(value :: Number) -> Number:
  if value == 0: energy-per-dag else: value end
end

t2 = transform-column(utslippstabell-finnland, "energi", addbil)
sum-on-energi() + energy-per-dag

# Oppgave E)

thegreatestchart = table: komponent :: String, energi :: Number
  row: "bil", 20
  row: "fly", 30
  row: "ovn", 37
  row: "lys", 5
  row: "dingser", 4
  row: "mlk", 15
  row: "varer", 48
  row: "varetransport", 12
  row: "offtjen", 4
end

bar-chart(thegreatestchart, "komponent", "energi") # dette lager en visuell søyletabell av dataen mellom de ulike katagoriene.
