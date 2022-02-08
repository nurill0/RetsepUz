//
//  RetsepModel.swift
//  RetsepUz
//
//  Created by Nurillo Domlajonov on 17/01/22.
//

import UIKit

struct RetsepData{
    
    var data: [RetsepDetailes] = []
    
    var dataA: [RetsepDetailes] = [
        RetsepDetailes(imageName: "one", definition: """
    Ushbu oddiy va tez tayyor bo’ladigan retsept odatiy taomnomangizni boyitishga yordam beradi. Makkajo’xori tovuq go’shti bilan ajoyib tarzda uyg’unlashadi.
    Bunday kotletlarni istalgan garnir yoki sabzavotli salat bilan dasturxonga tortishingiz mumkin.
""", products: """
Portsiya: 12 ta
1. 700 gramm tovuq filesi
2. 200 gramm konservalangan makkajo'xori
3. 120 gramm motsarella pishlog'i
4. 2 ta tuxum
5. 2 osh qoshiq smetana
6. 3 osh qoshiq un
7. Bir nechta shivit shoxchalari
8. Ta'bga ko'ra tuz va murch
9. Qovurish uchun o'simlik yog'i
""", steps: """
Qadam 1:
    Tovuq filesini go'sht maydaligichda maydalaymiz yoki pichoqda mayda qilib to'g'raymiz.
Maslahat: to'g'ralgan go'shtdan tayyorlangan kotletlar sersuvroq bo'lib chiqadi.

Qadam 2
    Motsarella yoki istalgan boshqa pishloqni qirg'ichning kata tishidan o'tkazamiz.

Qadam 3
    Tuxum va smetanani sanchqi yordamida ozroq ko'pirtirib, un, tuz va murch solamiz.

Qadam 4
    So'ngra hosil bo'lgan xamirga motsarella, mayda to'g'ralgan shivit va tovuq go'shtini solamiz. Yaxshilab aralashtirib, ustini yopishqoq plyonka bilan yopib, 1 soatga muzlatgichga yuboramiz.

Qadam 5
    Makkajo'xorini suvini to'kib, tashlab, xamirga solib, aralashtiramiz.
"""),
    ]
    var dataB: [RetsepDetailes] = [
        RetsepDetailes(imageName: "two", definition: """
    Yangi kartoshka va yangi gulkaramdan ko’ra mazali nima bo’lishi mumkin? Albatta ular birgalikda pishirilgan taom.
    Agar siz ko’proq sabzavot iste’mol qilishni istasangiz, bu siz uchun o’z-o’zidan ideal taom, shuningdek go’sht va tovuq go’shti uchun yaxshi garnir.
""", products: """
Portsiya: 4ta
1. 1 kilogramm yangi chiqqan kartoshkalar
2. 700 gramm gulkaram
3. 2 ta tuxum
4. 1 osh qoshiq sut
5. ta'bga ko'ra tuz
6. qovurish uchun o'simlik yog'i
""", steps: """
Qadam 1
    Kartoshkani yaxshilab suvda yuvamiz. Suvini bir necha marotaba almashtirish kerak bo'ladi.

Qadam 2
    Yuvilgan kartoshakani kastrulyaga solib, qaynoq suv va ta'bga ko'ra tuz solamiz. Qaynab chiqqanidan so'ng, 15-20 daqiqa qaynatamiz.

Qadam 3
    Suvini to'kib, po'stidan artamiz. Yanga chiqqan kartoshkaning maydalarini po'stini artamasa ham bo'ladi.

Qadam 4
    Tovaga o'simlik yog'i quyib, kartoshkalarni qizartirib qovurib olamiz. Qovurilgan kartoshkalarga ta'bga ko'ra tuz sepsa ham bo'ladi.

Qadam 5
    Idishga suv quyib, olovga qo'yamiz. Qaynab chiqqanidan so'ng, ta'bga ko'ra tuz sepamiz.

Qadam 6
    Gulkaramni bo'laklarga bo'lib, ozroq yuvamiz.

Qadam 7
    Gulkaramni qaynab turgan suvga solib, 5 daqiqa qaynatamiz va suvdan olamiz.

Qadam 8
    Idishga sut, tuxum va tuz solib, sanchqi yoki venchik yordamida yaxshilab aralashtiramiz. Hoxushga ko'ra sevimli ziravorlar solsa ham bo'ladi.

Qadam 9
    Har bir gulkaram bo'lagini aralashmaga botirib olamiz.

Qadam 10
    So'ngra kartoshka qovurilgan tovada o'rtacha olovda ikki taraflama bir necha soniyadan qizartirib qovurib olamiz.

Qadam 11
    Tayyor gulkaramlarni ortiqcha yog'i ketishi uchun qog'oz sochiqqa olamiz.

Qadam 12
    Qovurilgan kartoshka va gulkaramni likopchaga solib, dasturxonga tortamiz va ustiga istalgan ko'kat sepamiz.
    Yoqimli ishtaha!
""")
    ]
    var dataC: [RetsepDetailes] = [
        RetsepDetailes(imageName: "three", definition: """
    Gaz pechida pishirilgan kartoshka va go’shtli frikadelkalar – oilaviy tushlik yoki kechki ovqat uchun ajoyib variant. Ushbu taom juda mazali va xushbo’y bo’lib chiqadi.
    Frikadelkalar kartoshka bilan birga pishgani tufayli, uning oldiga garnir tayyorlashnng hojati qolmaydi. Sabzavotli salat tayyorlasangiz bas, kechki ovqat yoki tushlik tayyor!
""", products: """
GO'SHTLI FRIKADELKALAR UCHUN
Portsiya 6:
1. 350 gramm mol go'shtidan qiyma
2. 1 ta piyoz
3. 2 ta sarimsoqpiyoz tishchasi
4. 50 gramm maydalangan suxari
5. 1 ta tuxum
6. Ta'bga ko'ra quritilgan qalampir (paprika)
7. Ta'bga ko'ra tuz va murch

KARTOSHKALI FRIKADELKALAR UCHUN
1. 300 gramm qaynatilgan kartoshka
2. 30 gramm sariyog'
3. 0,5 bog' shivit
4. 0,5 bog' petrushka
5. Ta'bga ko'ra tuz va murch
6. Qolipga surtish uchun o'simlik yog'i
7. 1 osh qoshiq pomidor pastasi
8. 100 millilitr qaynoq suv
9. 150 gramm pishloq
""", steps: """
Qadam 1
    Idishga qiyma, mayda to'g'ralgan piyoz, sarimsoqpiyoz, maydalangan suxari, tuxum, paprika, tuz va murch solib, yaxshilab aralashtiramiz.

Qadam 2
    Kartoshkani po'stidan tozalab, pishgunicha qaynatib olamiz.

Qadam 3
    Qaynatib olingan kartoshkaga sariyog', tuz va murch solib, pyure holatiga keltirib, ezamiz. So'ngra mayda to'g'ralgan ko'kat solib, aralashtiramiz.

Qadam 4
    Go'shtli va kartoshkali qiymadan yong'oqdek keladigan frikadelkalar yasab olamiz.

Qadam 5
    Frikadelkalarni yog'langan qolipga terib chiqamiz.

Qadam 6
    200 C darajada qizdirilgan gaz pechiga 25 daqiqaga yuboramiz.

Qadam 7
    Pomidor pastasini qaynoq suvga solib, arlashtiramiz.

Qadam 8
    Taomni gaz pechidan olib, pomidorli qaylani quyamiz va qirg'ichdan o'tkazilgan pishloq sepib, yana 15 daqiqaga gaz pechiga yuboramiz.
    Yoqimli ishtaha!
""")
    ]
    var dataD: [RetsepDetailes] = [
        RetsepDetailes(imageName: "four", definition: """
    Bugun biz sizga instagram va tik-tokda ulkan shuhrat qozongan makaronni qanday tayyorlashni ko’rsatamiz. U mayin, yoqimli qaymoq va pomidor ta’miga ega bo’lib pishadi.
    Agar siz ushbu makaronni hali tayyorlab ko’rmagan bo’lsangiz, albatta sinab ko’rishingizni tavsiya qilamiz. Bu nafaqat mazali, balki juda oson tayyorlanadi.
""", products: """
Portsiya: 4ta
1. 180 gramm feta pishlog'i
2. 250 gramm istalgan pasta
3. 350 gramm pomidor cherry
4. 6 ta sarimsoqpiyoz tishchasi
5. Ta'bga ko'ra tuz
6. Ta'bga ko'ra oregano
7. 50 millilitr zaytun moyi

""", steps: """
Qadam 1
    Qayla tayyorlaymiz:
    Cherri pomidorlarini ikkiga bo'lamiz.

Qadam 2
    Toblatma uchun mo'ljallangan idishning o'rtasiga feta pishlog'i, yonlariga pomidorlar va butun sarimsoqpiyoz tishchalarini terib chiqamiz.

Qadam 3
    Zaytun moyi surtib, tuz va oregano sepamiz.

Qadam 4
    190 C darajada qizdirilgan gaz pechiga 25-30 daqiqaga yuboramiz.

Qadam 5
    Pasta tayyorlaymiz:
    Qayla tayyor bo'lishidan 10 daqiqa avval pastani qadoqida ko'rsatilganidek qaynab turgan sho'r suvda qaynatib olamiz.

Qadam 6
    Pastani suvini to'kamiz.

Qadam 7
    Tayyor qaylani sanchqida ozroq ezib aralashtiramiz.

Qadam 8
    So'ngra pastani solib, aralashtirib, dasturxonga tortish mumkin.

Yoqimli ishtaha!
""")
    ]
    var dataE: [RetsepDetailes] = [
        RetsepDetailes(imageName: "five", definition: """
    Keling, katta oila uchun yoqimli va xushbo’y ovqat tayyorlaymiz. Goluptsi taomini ukrain yoki rus oshxonasiga mansub deb bilishadi, bu karam barglariga o’ralgan sabzavotli yoki go’shtli qiyma hisoblanadi.
    Biz sizga pomidor-smetana qaylasida pishirilgan goluptsilarning oddiy, ammo shu bilan birga juda mazali retseptini taqdim etamiz. Yaqinlaringizni ajoyib kechki ovqat bilan siylang.
""", products: """
Portsiya: 12 ta
1. 700-800 gramm karam
2. 300 gramm mol go'shtidan qiyma
3. 200 gramm piyoz
4. 200 gramm qizil sabzi
5. 60 gramm guruch
6. 0,5 bog' shivit
7. 1 osh qoshiq pomidor pastasi
8. 1 osh qoshiq smetana
9. Qovurish uchun o'simlik yog'i
10. 300 millilitr suv
11. Ta'bga ko'ra tuz va murch
""", steps: """
Qadam 1
    Chuqur idishga suv solib(yarimidan ko'proq), qaynatamiz.

Qadam 2
    O'tkir pichoq yordamida karamning o'zagiga zarar bermagan holda, qattiq joyini kesib olamiz.Karamni qaynab turgan suvga solib 10 daqiqa qaynatamiz (barglari yumshashi kerak).
    Karamni suvdan olib, bir necha qavatlarini yechib olib, yana 5-7 daqiqa qaynatamiz.Ko'proq karam barglari yechib olinmaguncha shu tarzda davom etamiz.

Qadam 3
Nachinka tayyorlaymiz:
    Sabzini qirg'ichning katta tishidan o'tkazamiz. Piyoz va shivitni mayda qilib to'g'raymiz.

Qadam 4
    Chuqur tova yoki qozonga yog' solib, sabzi va piyozni oltin rang tusga kirgunicha 10-15 daqiqa qovuramiz. So'ngra olovdan olamiz.

Qadam 5
    Mol go'shtidan qiymaga 2 osh qoshiq qovurilgan piyoz va sabzi, guruch, shivit, tuz va murch solamiz.

Qadam 6
    Agar karam barglarining qattiq joylari qolgan bo'lsa, ularni kesib tashlagan ma'qul, shunda tugushga oson bo'ladi.Har bir bargga 1-2 osh qoshiq qiyma solamiz.

Qadam 7
    Goluptsilarni rasmda ko'rsatilganidek tugamiz.

Qadam 8
    Alohida idishda 300 ml suv, pomidor pastasi, smetana, tuz va murchni aralashtiramiz.

Qadam 9
    Qolgan piyoz va sabzili qovurmaga goluptsilarni terib, ustidan pomidor va smetanali qaylani quyamiz. Qaynab chiqqanidan so'ng qopqog'ini yopgan holda, o'rtacha olovda 30-40 daqiqa pishiramiz. Tayyor goluptsilarni likopchaga olib, ko'katlar sepamiz.
Yoqimli ishtaha!
""")
    ]
    var dataF: [RetsepDetailes] = [
        RetsepDetailes(imageName: "six", definition: """
    Laxmadjun – turk oshxonasiga mansub bo’lgan, mashxur sharq taomi. Qolaversa uni armancha, turkcha yoki arabcha pitsa ham deb atashadi.
    Taomning asosini yupqa qarsildoq xamir tashkil etib, uning ustiga go’shtli qiyma qo’yiladi.
""", products: """
XAMIRI UCHUN:
Portsiya 4:
1. 130 millilitr iliq suv
2. 3 osh qoshiq zaytun moyi
3. 1 osh qoshiq shakar
4. 5 gramm quruq xamirturush
5. 280 gramm un
6. 1 choy qoshiq tuz

NACHINKA UCHUN
Portsiya 4:
1. 250 gramm mol go'shtidan qiyma
2. 100 gramm piyoz
3. 2 ta har xil rangli bulg'or qalampiri
4. 1 ta pomidor
5. 1 osh qoshiq pomidor pastasi
6. 1 bog' ko'k piyoz
7. 0,5 bog' shivit va petrushka
8. 1 ta sarimsoqpiyoz tishchasi
9. 2 osh qoshiq zaytun moyi
10.Ta'bga ko'ra tuz va murch
""", steps: """
Qadam 1
    Xamir tayyorlaymiz:
    Un solingan idishga xamirturush, shakar va tuz solib, aralashtiramiz.

Qadam 2
    Hosil bo'lgan massaga zaytun moyi va illiq suv solib, xamir qoramiz. Ustini yopishqoq plyonka bilan yopib, 30 daqiqaga issiq joyga yuboramiz.

Qadam 3
    Nachinka tayyorlaymiz:
    Pomidor, piyoz va bulg'or qalampirini blenderda maydalaymiz. Suyuq massa hosil bo'ladi.

Qadam 4
    Suyuq massani qiymaga solib, pomidor pastasi, sarimsoqpiyoz, ko'k piyoz va tuz solib, yaxshilab aralashtiramiz.

Qadam 5
    Oshgan xamirni 4-5 ta bir xil bo'laklarga bo'lib, dumaloqlaymiz.

Qadam 6
    Stol ustiga un sepib, har bir bo'lakni 0,5 sm qalinlikda yoyamiz.

Qadam 7
    Yoyilgan xamirni pergament qog'ozi bilan qoplangan gaz pechi patnisiga joylashtiramiz.

Qadam 8
    Xamir ustiga xamir diametrini inobatga olgan holda 4-5 osh qoshiq nachinka solamiz. 230 C darajada qizdirilgan gaz pechiga 10-15 daqiqaga yuboramiz.

Qadam 9
    Tayyor laxmadjunlarni istalgan qayla bilan dasturxonga tortish mumkin.
    Yoqimli ishtaha!
""")
    ]
    var dataG: [RetsepDetailes] = [
        RetsepDetailes(imageName: "seven", definition: """
    Ushbu retsept bo’yicha tayyorlangan xushbo’y va mazali taomni, ham go’shtli taomga garnir sifatida, ham asosiy taom sifatida dasturxonga tortish mumkin.
    Kartoshka usti qarsildoq, ichi esa yumshoq, pyure sifat bo’lib pishadi.
""", products: """
Portsiya: 6 ta
1. 1 kilogramm kartoshka
2. 8 ta sarimsoqpiyoz tishchasi
3. 70 millilitr zaytun moyi
4. Ta'bga ko'ra tuz va murch
5. Ta'bga ko'ra maydalangan petrushka
""", steps: """
Qadam 1
    Kartoshkani po'stini artmasdan yaxshilab yuvib, 4 ta bo'lakka bo'lamiz va katta idishga solamiz.

Qadam 2
    Zaytun moyi, tuz, murch va sarimsoqpiyoz solamiz. Yaxshilab aralashtiramiz. Kartoshkalarni toblatma uchun mo'ljallangan idishga bir qavat qilib terib chiqamiz.

Qadam 3
    Kartoshkalarni 200 C darajada qizdirilgan gaz pechiga 45-60 daqiqaga pishgunicha yuboramiz.

Qadam 4
    Pishgan kartoshkalarni gaz pechidan olib, ustiga maydalangan petrushka sepamiz.

Qadam 5
    Issiq yegulik yoki gazak sifatida dasturxonga tortamiz.
    Yoqimli ishtaha!
""")
    ]
    var dataH: [RetsepDetailes] = [
        RetsepDetailes(imageName: "eight", definition: """
    Bugun biz sizga ramyon sho’rvasini tovuq bilan birga pishirishni taklif qilmoqchimiz, uning ta’mi sizni xursand qiladi deb umid qilamiz. Osiyo ramyon sho’rvasi – bu to’yimli, mazali taom. Sho’rva tez tayyorlanadigan lapshadan iborat bo’lib, unga qo’shimcha ingredientlar qo’shiladi, ularning asosiy qismi go’sht, sabzavot, tuxumdir.
    Agar siz mehmonlaringizni g’ayrioddiy taom bilan ajablantirmoqchi bo’lsangiz, unda ramyn tayyorlab bering.
""", products: """
Portsiya: 2
1. 300 gramm tovuq filesi
2. 2 ta tovuq sonlari
3. 1 litr suv
4. 300 gramm ramyon uchun lapsha
5. 2 ta tuxum
6. 50 gramm ismaloq
7. 100 gramm qizil sabzi
8. 100 gramm piyoz
9. 0,5 bog' ko'k piyoz
10. 3 ta sarimsoqpiyoz tishchasi
11. 1 ta nori bargi
12. 4 osh qoshiq soya qaylasi
13. 1ovurish uchun o'simlik yog'i
14. 1 choy qoshiq shakar
15. Ta'bga ko'ra tuz
16. 10 gramm zanjabil
17. Ta'bga ko'ra oq kunjut
""", steps: """
Qadam 1
Bulyon tayyorlaymiz:
    Tovuq sonlarini idishga solib, katta to'g'ralgan sabzi, butun piyoz solamiz va suv quyamiz (1-1,5 litr) tahminan 1 soat qaynatamiz.

Qadam 2
    Qaynatilgan bulyonni

Qadam 3
    Qaynab chiqqanidan so'ng lapshani solib, o'rtacha olovda tahminan 5 daqiqa qaynatamiz. So'ngra gazdan olamiz.

Qadam 4
    Tovuq filesini cho'zinchoq qilib to'g'raymiz.

Qadam 5
    Tovaga o'simlik yog'ini quyib, tovuq filesini solib, tuz sepib, pishgunicha (tahminan 15-20 daqiqa) qovuramiz.

Qadam 6
    Sovuq suv solingan idishga tuxum solib, olovga qo'yamiz. Qaynab chiqqanidan so'ng 4 daqiqa qaynatib, So'ngra po'stidan tozalaymiz.

Qadam 7
    Har bir idishga 150 gramm lapsha solib, bulyon quyamiz.

Qadam 8
    Har bir idishga qovurilgan file, 2 ta bo'lakdan tuxum, ozroq ismaloq solamiz.

Qadam 9
    Ustiga ko'k piyoz, kunjut sepib, nori bargini qo'shamiz va qaynoq shaklida dasturxonga tortamiz.
Yoqimli ishtaha!
""")
    ]
    var dataI: [RetsepDetailes] = [
        RetsepDetailes(imageName: "nine", definition: """
    O’zbek oshxonasi o’zining xilma-xil taomlari bilan ajralib turadi. Bugun biz sizga yupqani qanday tayyorlashni ko’rsatamiz. Yupqa – bu o’ziga xos an’anaviy taom.
    Qovurishning g’ayrioddiy usuli tufayli siz taniqli mahsulotlardan mazali va to’yimli taom tayyorlashingiz mumkin bo’ladi.
""", products: """
XAMIRI UCHUN
Portsiya: 10
1. 300 gramm un
2. 200 gramm suv
3. 1 choy qoshiq tuz
NACHINKASI UCHUN
Portsiya: 10
1. 300-350 gramm piyoz
2. 350 gramm mol go'shtidan qiyma
3. 300 gramm sabzi
4. 60 millilitr o'simlik yog'i
""", steps: """
Qadam 1
    Xamir tayyorlaymiz:
    Idishga suv, tuz va un solib, yumshoq xamir qoramiz.

Qadam 2
    Nachinka tayyorlaymiz:
    Piyozni yarim halqa shaklida to'g'raymiz.

Qadam 3
    Sabzini somoncha shaklida qirg'ichdan o'tkazamiz.

Qadam 4
    Qozonga o'simlik yog'ini solib, qizdiramiz.

Qadam 5
    Qizigan yog'ga piyoz solib, 5 daqiqa qovuramiz. So'ngra go'shtni solib, tuz va murch sepib, tahminan 7 daqiqa qovuramiz.

Qadam 6
    So'ngra sabzini solib, yarim tayyor holga kelgunicha (5-7 daqiqa) qovuramiz. Qopqog'ini yopib, olovdan olamiz.

Qadam 7
    Xamirni 10-12 bo'lakka bo'lamiz (50-55 grammdan).

Qadam 8
    Har bir bo'lakka un sepib, (tova diametri bo'yicha) yupqa qilib yoyamiz.

Qadam 9
    Yoyilgan xamirni o'rtacha olovda bir tarafini qovurib, so'ngra ikkinchi tarafini o'girib, butun diametri bo'yicha nachinka solamiz (2-3 osh qoshiq). Nachinkani xamirning ikkinchi tarafi bilan yopib, o'giramiz (videoda ko'rsatilganidek).
Maslahat: har bir tarafi tahminan 1 daqiqadan qovuriladi. Qavatlarni 3 tadan 5 tagacha qilish mumkin.

Qadam 10
    5 qavat qilgandan so'ng, tovani qopqog'ini yopib, 7-10 daqiqa pishiramiz. Shu tarzda qolganlarini ham pishirib olamiz.

Qadam 11
    Qovurilgan yupqalarni likopchaga olib, ustini yopamiz va 20 daqiqaga tindirib qo'yamiz.

Qadam 12
Shunda yupqalarimiz yumshaydi va ularni videoda ko'rsatilgandek o'rash mumkin bo'ladi.
Yoqimli ishtaha!
""")
    ]
    var dataJ: [RetsepDetailes] = [
        RetsepDetailes(imageName: "ten", definition: """
    Chebureklar… Ular haqida nima deyish mumkin? Faqatgina tayyorlab, ta’tib ko’rish kerak holos! Ushbu retsept bo’yicha tayyorlangan chebureklar – sersuv, mazali, yumshoq va qarsildoq bo’lib pishadi.
    Bu juda mazali! Bunday taomni dam olish kunlarida tayyorlab, oila a’zolaringizni xursand qilsangiz bo’ladi.
""", products: """
XAMIRI UCHUN
Portsiya: 12
1. 800 gramm un
2. 200 millilitr suv
3. 200 millilitr sut
4. 1 ta tuxum
5. 2 choy qoshiq tuz
6. Bir chimdim shakar
7. Qovurish uchun o'simlik yog'i
NACHINKASI UCHUN
Portsiya: 12
1. 500 gramm mol go'shtidan qiyma
2. 1 ta pomidor
3. Bir nechta kashnich shoxchalari
4. Ta'bga ko'ra tuz
""", steps: """
Qadam 1
    Nachinka tayyorlaymiz:
    Pomidorlarni to'rtburchak shaklida tog'raymiz, ko'katni mayda qilib to'g'raymiz.

Qadam 2
    Qiymaga pomidor, ko'kat va tuz solib, aralashtiramiz.

Qadam 3
    Xamir tayyorlaymiz;
    Illiq suvga sut, shakar va tuz solamiz. Aralashtiramiz.

Qadam 4
    Un ustida chuqurcha hosil qilib, sutli massani quyib, tuxum solamiz va xamir qoramiz. Xamirni yopishqoq plyonkaga o'rab, 20 daqiqaga chetga olib qo'yamiz.

Qadam 5
    Xamirni 30-35 gramm keladigan bo'laklarga bo'lamiz va 0,3-0,4 sm qalinlikdagi dumaloq shaklida yoyamiz.

Qadam 6
    Dumaloqning yarimiga nachinka solib, ustini ikkinchi yarimi bilan yopamiz. Chetlarini mahkamlab, ortiqchasini naqshli pichoq yordamida kesib tashlaymiz.

Qadam 7
    Tagi chuqur idishda yog'ni qizdirib, chebureklarni o'rtachadan balandroq olovda qizargunicha qovurib olamiz.
    Maslahat: chebureklar qovurilayotganida yog'da suzib yurishi, tova tagida turmasligi zarur.

Qadam 8
    Tayyor chebureklarni qog'oz salfetkalarga, ortiqcha yog'i ketishi uchun qo'yamiz.
Yoqimli ishtaha!
""")
    ]
    
    mutating func getType(type: Int) {
        switch type {
        case 0: data = dataA
        case 1: data = dataB
        case 2: data = dataC
        case 3: data = dataD
        case 4: data = dataE
        case 5: data = dataF
        case 6: data = dataG
        case 7: data = dataH
        case 8: data = dataI
        case 9: data = dataJ
        default: data = []
        }
    }
    func getItem(index: Int)->RetsepDetailes{
         return data[index]
    }
}


struct RetsepDetailes{
    let imageName: String
    let definition: String
    let products: String
    let steps: String
}
