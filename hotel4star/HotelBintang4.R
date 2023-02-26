#Hotel 4

#1. Swiss-Belboutique YK
swiss <- scrapper_hotels.com('https://www.hotels.com/ho614821-tr/?q-check-in=2020-07-05&q-check-out=2020-07-06&q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&MGT=1&YGF=1&WOD=7&WOE=1&applyEmbargo=false&reviewTab=brand-reviews')
write.csv(swiss,'swiss.csv')

#2. Hotel Harper Mangkubumi by Aston
harper <- scrapper_hotels.com('https://www.hotels.com/ho483506-tr/?q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&applyEmbargo=true&reviewTab=brand-reviews')
write.csv(harper,'harper.csv')

#3. Hotel Novotel
novotel <- scrapper_hotels.com('https://www.hotels.com/ho178093-tr/?q-check-in=2020-07-05&q-check-out=2020-07-06&q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&MGT=1&YGF=1&WOD=7&WOE=1&applyEmbargo=false&reviewTab=brand-reviews')
write.csv(novotel,'novotel.csv00')

#4. Hotel Sheraton Mustika YK 
sheraton <- scrapper_hotels.com('https://www.hotels.com/ho133019-tr/?q-check-in=2020-07-05&q-check-out=2020-07-06&q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&MGT=1&YGF=1&WOD=7&WOE=1&applyEmbargo=false&reviewTab=brand-reviews')
write.csv(sheraton,'sheraton.csv')

#5. Hotel The Alana Hotel & Conference Center Malioboro Yogyakarta by ASTON
alana <- scrapper_hotels.com('https://www.hotels.com/ho509788-tr/?q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&applyEmbargo=true&reviewTab=brand-reviews')
write.csv(alana,'alana.csv')

#6. Hotel Hyatt Regency
hyatt <- scrapper_hotels.com('https://www.hotels.com/ho471490-tr/?q-check-in=2020-07-05&q-check-out=2020-07-06&q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&MGT=1&YGF=1&WOD=7&WOE=1&applyEmbargo=false&reviewTab=brand-reviews')
write.csv(hyatt,'hyatt.csv')