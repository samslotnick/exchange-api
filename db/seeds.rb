# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



example_resp = {
  result:"success",
  time_last_update_utc:"Sun, 07 Feb 2021 00:02:31 +0000",
  time_next_update_utc:"Mon, 08 Feb 2021 00:31:41 +0000",
  time_eol_unix:0,
  base_code:"USD",
  rates:{
    "USD":1,"AED":3.67,"AFN":77.67,"ALL":102.82,"AMD":521.34,"ANG":1.79,"AOA":652.69,"ARS":87.81,"AUD":1.31,"AWG":1.79,"AZN":1.7,"BAM":1.63,"BBD":2,"BDT":85.01,"BGN":1.63,"BHD":0.376,"BIF":1942.04,"BMD":1,"BND":1.34,"BOB":6.89,"BRL":5.39,"BSD":1,"BTN":72.97,"BWP":11,"BYN":2.64,"BZD":2,"CAD":1.28,"CDF":1981.86,"CHF":0.904,"CLP":734.28,"CNY":6.47,"COP":3531.51,"CRC":611.68,"CUC":1,"CUP":25,"CVE":91.9,"CZK":21.64,"DJF":177.72,"DKK":6.22,"DOP":58.04,"DZD":133.36,"EGP":15.7,"ERN":15,"ETB":39.55,"EUR":0.834,"FJD":2.04,"FKP":0.73,"FOK":6.22,"GBP":0.731,"GEL":3.32,"GGP":0.73,"GHS":5.82,"GIP":0.73,"GMD":52.13,"GNF":10296.94,"GTQ":7.77,"GYD":211.11,"HKD":7.76,"HNL":24.1,"HRK":6.28,"HTG":73.73,"HUF":297.91,"IDR":14164.93,"ILS":3.3,"IMP":0.73,"INR":72.98,"IQD":1461.79,"IRR":42247.39,"ISK":130.2,"JMD":147.76,"JOD":0.709,"JPY":105.48,"KES":109.9,"KGS":84.5,"KHR":4093.96,"KID":1.31,"KMF":410.05,"KRW":1120.95,"KWD":0.3,"KYD":0.833,"KZT":422.15,"LAK":9324.85,"LBP":1507.5,"LKR":193.65,"LRD":171.22,"LSL":14.99,"LYD":4.47,"MAD":8.99,"MDL":17.38,"MGA":3738.1,"MKD":51.37,"MMK":1361.67,"MNT":2859.82,"MOP":7.99,"MRU":36.11,"MUR":39.85,"MVR":15.42,"MWK":772.22,"MXN":20.32,"MYR":4.06,"MZN":74.62,"NAD":14.99,"NGN":395.2,"NIO":34.92,"NOK":8.62,"NPR":116.76,"NZD":1.4,"OMR":0.384,"PAB":1,"PEN":3.64,"PGK":3.52,"PHP":48.14,"PKR":160.55,"PLN":3.76,"PYG":6823.2,"QAR":3.64,"RON":4.07,"RSD":97.85,"RUB":75.46,"RWF":992.01,"SAR":3.75,"SBD":7.93,"SCR":21.14,"SDG":55.21,"SEK":8.46,"SGD":1.34,"SHP":0.73,"SLL":10184.71,"SOS":579.41,"SRD":14.17,"SSP":176.1,"STN":20.42,"SYP":736.42,"SZL":14.99,"THB":30.11,"TJS":11.36,"TMT":3.5,"TND":2.71,"TOP":2.29,"TRY":7.11,"TTD":6.77,"TVD":1.31,"TWD":27.99,"TZS":2317.77,"UAH":27.83,"UGX":3662.64,"UYU":42.39,"UZS":10491.19,"VES":1805838.92,"VND":23183.63,"VUV":108.05,"WST":2.51,"XAF":546.73,"XCD":2.7,"XDR":0.698,"XOF":546.73,"XPF":99.46,"YER":251.13,"ZAR":14.99,"ZMW":21.53
    }
  }
  date = example_resp[:time_last_update_utc]
  date = date.to_datetime
  Exchange.create(
    date: date,
    rates: example_resp[:rates]
     )