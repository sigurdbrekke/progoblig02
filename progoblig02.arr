include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
sanitize energi using string-sanitize
end



fun energi-to-number(value :: String) -> number:
  doc: "if s is not a numeric string, set default to 0"
  cases(Option) energi-to-number(s):
    | some(value :: a)
    | none(value :: 0)
  
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