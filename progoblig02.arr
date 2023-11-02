include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
Energiforbrukstabellen =load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
  sanitize energi using string-sanitizer
end

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

Energiforbrukstabellen
ny-forbrukstabell = transform-column(Energiforbrukstabellen, "energi", energi-to-number)

ny-forbrukstabell
fun sum-on-energi():
  t = transform-column(Energiforbrukstabellen, "energi", energi-to-number)
  
  sum(t, "energi")

end

