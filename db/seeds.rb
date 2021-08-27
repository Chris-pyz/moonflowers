# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Waste.destroy_all
Activity.destroy_all
User.destroy_all
# user sans les photos avatars

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625512037/ltk4vcdsjkqw1icbihyo.jpg')
anna = User.create(name: 'Anaïs', nickname: 'Anna', email: 'anna@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et je suis souriante")
anna.avatar_photo.attach(io: file, filename: 'anna.jpg', content_type: 'image/jpg')

file1 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625493713/m3yqn89cd6hmz1lwfz4t.jpg')
arnaud = User.create(name: 'Arnaud', nickname: 'Arno', email: 'arnaud@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et le sport")
arnaud.avatar_photo.attach(io: file1, filename: 'arnaud.jpg', content_type: 'image/jpg')

file2 = URI.open("https://avatars.githubusercontent.com/u/84345980?v=4")
chris = User.create(name: 'Christophe', nickname: 'Chris', email: 'chris@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et la science des rêves")
chris.avatar_photo.attach(io: file2, filename: 'chris.jpg', content_type: 'image/jpg')

file3 = URI.open("https://avatars.githubusercontent.com/u/84381014?v=4")
genevieve = User.create(name: 'Genevieve', nickname: 'Geai', email: 'genevieve@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature et les livres")
genevieve.avatar_photo.attach(io: file3, filename: 'genevieve.jpg', content_type: 'image/jpg')

file4 = URI.open("https://avatars.githubusercontent.com/u/38854085?v=4")
kevin = User.create(name: 'Kevin', nickname: 'Kev', email: 'kevin@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et les voyages")
kevin.avatar_photo.attach(io: file4, filename: 'kevin.jpg', content_type: 'image/jpg')

file5 = URI.open("https://avatars.githubusercontent.com/u/86491589?v=4")
rogerio = User.create(name: 'Rogerio', nickname: 'Rog', email: 'rogerio@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et je suis souriant et j'aime les voyages")
rogerio.avatar_photo.attach(io: file5, filename: 'rogerio.jpg', content_type: 'image/jpg')

file6 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625493783/ozucslmhqnckurvgnewm.jpg")
adrien = User.create(name: 'Adrien', nickname: 'Adri', email: 'adrien@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, le cinema et le codage ")
adrien.avatar_photo.attach(io: file6, filename: 'adrien.jpg', content_type: 'image/jpg')

file7 = URI.open("https://avatars.githubusercontent.com/u/84907809?v=4")
augustin = User.create(name: 'Augustin', nickname: 'Tintin', email: 'augustin@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, l'aviation et l'humanitaire")
augustin.avatar_photo.attach(io: file7, filename: 'augustin.jpg', content_type: 'image/jpg')

file8 = URI.open("https://avatars.githubusercontent.com/u/85256454?v=4")
thais = User.create(name: 'Thais', nickname: 'Thairis', email: 'thais@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature,les livres et les plantes")
thais.avatar_photo.attach(io: file8, filename: 'thais.jpg', content_type: 'image/jpg')

file9 = URI.open("https://avatars.githubusercontent.com/u/68854106?v=4")
victor = User.create(name: 'Victor', nickname: 'Vic', email: 'victor@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, la musique et les nouvelles technologies")
victor.avatar_photo.attach(io: file9, filename: 'victor.jpg', content_type: 'image/jpg')

file10 = URI.open("https://avatars.githubusercontent.com/u/80356888?v=4")
issam = User.create(name: 'Issam', nickname: 'Is', email: 'issam@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, la cuisine et le wagon")
issam.avatar_photo.attach(io: file10, filename: 'issam.jpg', content_type: 'image/jpg')

file11 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625416933/sam6pchmibjz6eqk0nmb.jpg")
mikael = User.create(name: 'Mikael', nickname: 'Mika', email: 'mikael@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, les voyages et la musique")
mikael.avatar_photo.attach(io: file11, filename: 'mikael.jpg', content_type: 'image/jpg')

file12 = URI.open("https://avatars.githubusercontent.com/u/85690921?v=4")
sacha = User.create(name: 'Sacha', nickname: 'Chacha', email: 'sacha@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, le rugby, la fete et les siestes")
sacha.avatar_photo.attach(io: file12, filename: 'sacha.jpg', content_type: 'image/jpg')

file13 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625507841/qywxnxgcuxt7vif2nyii.jpg")
djabirati = User.create(name: 'Djabirati', nickname: 'Djabi', email: 'djabirati@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature, la cuisine et les moments en famille")
djabirati.avatar_photo.attach(io: file13, filename: 'djabirati.jpg', content_type: 'image/jpg')

file14 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1563188935/aecpacu35pytf2niyqea.jpg")
hugo = User.create(name: 'Hugo', nickname: 'Hug', email: 'hugo@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, le skate et les voyages")
hugo.avatar_photo.attach(io: file14, filename: 'hugo.jpg', content_type: 'image/jpg')

file15 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1611653847/y5go6enykr9xmood7w9a.jpg")
pauline = User.create(name: 'Pauline', nickname: 'Paupau', email: 'pauline@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, je suis souriante")
pauline.avatar_photo.attach(io: file15, filename: 'pauline.jpg', content_type: 'image/jpg')

file16 = URI.open("https://avatars.githubusercontent.com/u/71516898?v=4")
clara = User.create(name: 'Clara', nickname: 'Clacla', email: 'clara@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature et le sport")
clara.avatar_photo.attach(io: file16, filename: 'clara.jpg', content_type: 'image/jpg')

file17 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1583357250/gk47wnvfasolksug67x7.jpg")
damien = User.create(name: 'Damien', nickname: 'Dam', email: 'damien@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, enseigner et le theatre")
damien.avatar_photo.attach(io: file17, filename: 'damien.jpg', content_type: 'image/jpg')

file18 = URI.open("https://avatars.githubusercontent.com/u/86082722?v=4")
dorra = User.create(name: 'Dorra', nickname: 'Dodo', email: 'dorra@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature, les livres et la mer")
dorra.avatar_photo.attach(io: file18, filename: 'dorra.jpg', content_type: 'image/jpg')

file19 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1529500850/hlz68xks9khd0vgjpfxo.jpg")
florent = User.create(name: 'Florent', nickname: 'Flo', email: 'florent@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, enseigner et l'ecologie")
florent.avatar_photo.attach(io: file19, filename: 'florent.jpg', content_type: 'image/jpg')

file20 = URI.open("https://avatars.githubusercontent.com/u/71978544?v=4")
julien = User.create(name: 'Julien', nickname: 'Juju', email: 'julien@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, le codage et le sport")
julien.avatar_photo.attach(io: file20, filename: 'julien.jpg', content_type: 'image/jpg')

file21 = URI.open("https://avatars.githubusercontent.com/u/67097382?v=4")
stephane = User.create(name: 'Stephane', nickname: 'Steph', email: 'stephane@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, les restaurants et le beach-rugby")
stephane.avatar_photo.attach(io: file21, filename: 'stephane.jpg', content_type: 'image/jpg')

file22 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1604908627/kfyddcog79vdt3orxnyg.jpg")
jeanloup = User.create(name: 'Jean-loup', nickname: 'Jloup', email: 'jean-loup@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, les voyages et aider les moonflowers")
jeanloup.avatar_photo.attach(io: file22, filename: 'jeanloup.jpg', content_type: 'image/jpg')

file23 = URI.open("https://scontent.fcdg3-1.fna.fbcdn.net/v/t1.6435-9/133282154_3738326992855177_595948047285156205_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gG0E012pRoEAX-H6LvN&tn=2PLKdSnrFr2eKJE8&_nc_ht=scontent.fcdg3-1.fna&oh=31f05cb6bab7eeeb62b086a2390602f0&oe=614D0529")
alain = User.create(name: 'Alain', nickname: 'Toto', email: 'alain@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature, le sport et les voyages")
alain.avatar_photo.attach(io: file23, filename: 'alain.jpg', content_type: 'image/jpg')

file24 = URI.open("https://scontent.fcdg3-1.fna.fbcdn.net/v/t1.18169-9/994472_10154520354225151_2437144265381998964_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=bGkQu5--bxUAX_1MVA1&tn=2PLKdSnrFr2eKJE8&_nc_ht=scontent.fcdg3-1.fna&oh=ba62f910197b197130af13412035ba08&oe=6149F5A3")
alice = User.create(name: 'Alice', nickname: 'Alilyce', email: 'alice@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, les iles et la plongée sous-marine")
alice.avatar_photo.attach(io: file24, filename: 'alice.jpg', content_type: 'image/jpg')

file25 = URI.open("https://scontent.fcdg3-1.fna.fbcdn.net/v/t31.18172-8/1405004_10202392290514464_1787383006_o.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=X8tvLpKZFd0AX8RC2md&tn=2PLKdSnrFr2eKJE8&_nc_ht=scontent.fcdg3-1.fna&oh=259f3288cf068d36f197b7b760280cd2&oe=614CAE11")
frederic = User.create(name: 'Frederic', nickname: 'Fred', email: 'frederic@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, les randonnées et la plongée sous-marine")
frederic.avatar_photo.attach(io: file25, filename: 'fred.jpg', content_type: 'image/jpg')

file26 = URI.open("https://scontent.fcdg3-1.fna.fbcdn.net/v/t39.30808-6/238619399_10159240648398608_9056120649267015433_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=7dNMPA25XvYAX99E3lO&tn=2PLKdSnrFr2eKJE8&_nc_ht=scontent.fcdg3-1.fna&oh=af4a4e5a5fc2ffb19fac8db0014a31da&oe=612BCEA5")
virginie = User.create(name: 'Virginie', nickname: 'Virgi', email: 'virginie@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, le yoga et la cuisine")
virginie.avatar_photo.attach(io: file26, filename: 'virginie.jpg', content_type: 'image/jpg')

file27 = URI.open("https://www.facebook.com/photo.php?fbid=10154036956449680&set=pb.728139679.-2207520000..&type=3")
naia = User.create(name: 'Naia', nickname: 'Nayouta', email: 'naia@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, la danse et le surf")
naia.avatar_photo.attach(io: file27, filename: 'naia.jpg', content_type: 'image/jpg')

file28 = URI.open("https://scontent.fcdg3-1.fna.fbcdn.net/v/t1.6435-9/120573342_10157960492224263_1414604566125718083_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=1N87S12H5VAAX_JFQPx&_nc_ht=scontent.fcdg3-1.fna&oh=549100da3a39cbebe42151df9f881b0b&oe=614AF887")
fabrice = User.create(name: 'Fabrice', nickname: 'Fafa', email: 'fabrice@lewagon.com', password:'123456', city: 'Marseille', self_description: "J'aime la nature, les voyages et la moto ")
fabrice.avatar_photo.attach(io: file28, filename: 'fabrice.jpg', content_type: 'image/jpg')

file29 = URI.open("https://www.facebook.com/photo/?fbid=10159516509749824&set=a.432216774823")
gaelle = User.create(name: 'Gaelle', nickname: 'Guagua', email: 'gaelle@lewagon.com', password: '123456', city: 'Marseille', self_description: "J'aime la nature, la cuisine et les voyages")
gaelle.avatar_photo.attach(io: file29, filename: 'gaelle.jpg', content_type: 'image/jpg')


# Activity
a1 = Activity.create!(longitude: 5.371960639953613, latitude: 43.26214599609375, user: anna)
w1 = Waste.create!(quantity: 2, material: 'Verre', activity: a1)

a2 = Activity.create!(longitude: 5.4047562, latitude: 43.313862, user: arnaud)
w2 = Waste.create!(quantity: 8, material: 'Plastique', activity: a2)

a3 = Activity.create!(longitude: 5.38107, latitude: 43.29695, user: chris)
w3 = Waste.create!(quantity: 2, material: 'Métal', activity: a3)

a4 = Activity.create!(longitude: 5.383674621582031, latitude: 43.29341125488281, user: genevieve)
w4 = Waste.create!(quantity: 3, material: 'Verre', activity: a4)

a5 = Activity.create!(longitude: 5.355508327484131, latitude: 43.290714263916016, user: kevin)
w5 = Waste.create!(quantity: 1, material: 'Plastique', activity: a5)

a6 = Activity.create!(longitude: 5.368098, latitude: 43.292790, user: rogerio)
w6 = Waste.create!(quantity: 5, material: 'Métal', activity: a6)

a7 = Activity.create!(longitude: 5.375102, latitude: 43.293449, user: sacha)
w7 = Waste.create!(quantity: 2, material: 'Verre', activity: a7)

a8 = Activity.create!(longitude: 5.369103, latitude: 43.296068, user: victor)
w8 = Waste.create!(quantity: 4, material: 'Plastique', activity: a8)

a9 = Activity.create!(longitude: 5.376034, latitude: 43.295941, user: mikael)
w9 = Waste.create!(quantity: 7, material: 'Métal', activity: a9)

a10 = Activity.create!(longitude: 5.361888, latitude: 43.286470, user: issam)
w10 = Waste.create!(quantity: 2, material: 'Verre', activity: a10)

a11 = Activity.create!(longitude: 5.381775, latitude: 43.294705, user: thais)
w11 = Waste.create!(quantity: 4, material: 'Plastique', activity: a11)

a12 = Activity.create!(longitude: 5.374277, latitude: 43.300962, user: augustin)
w12 = Waste.create!(quantity: 2, material: 'Métal', activity: a12)

a13 = Activity.create!(longitude: 5.403868, latitude: 43.286118, user: adrien)
w13 = Waste.create!(quantity: 3, material: 'Verre', activity: a13)

a14 = Activity.create!(longitude: 5.413765, latitude: 43.309037, user: jeanloup)
w14 = Waste.create!(quantity: 7, material: 'Plastique', activity: a14)

a15 = Activity.create!(longitude: 5.418958, latitude: 43.330268, user: pauline)
w15 = Waste.create!(quantity: 1, material: 'Métal', activity: a15)

a16 = Activity.create!(longitude: 5.391835, latitude: 43.276489, user: clara)
w16 = Waste.create!(quantity: 3, material: 'Verre', activity: a16)

a17 = Activity.create!(longitude: 5.396899, latitude: 43.265552, user: dorra)
w17 = Waste.create!(quantity: 2, material: 'Plastique', activity: a17)

a18 = Activity.create!(longitude: 5.383853, latitude: 43.272302, user: alice)
w18 = Waste.create!(quantity: 5, material: 'Métal', activity: a18)

a19 = Activity.create!(longitude: 5.368146, latitude: 43.300043, user: florent)
w19 = Waste.create!(quantity: 2, material: 'Verre', activity: a19)

a20 = Activity.create!(longitude: 5.353641, latitude: 43.286549, user: stephane)
w20 = Waste.create!(quantity: 3, material: 'Plastique', activity: a20)

a21 = Activity.create!(longitude: 5.383252, latitude: 43.302291, user: damien)
w21 = Waste.create!(quantity: 1, material: 'Plastique', activity: a21)

a22 = Activity.create!(longitude: 5.359391, latitude: 43.289173, user: fabrice)
w22 = Waste.create!(quantity: 7, material: 'Plastique', activity: a22)

a23 = Activity.create!(longitude: 5.372523, latitude: 43.242735, user: gaelle)
w23 = Waste.create!(quantity: 2, material: 'Plastique', activity: a23)

a24 = Activity.create!(longitude: 5.393724, latitude: 43.295483, user: frederic)
w24 = Waste.create!(quantity: 4, material: 'Plastique', activity: a24)

a25 = Activity.create!(longitude: 5.390548, latitude: 43.291047, user: virginie)
w25 = Waste.create!(quantity: 3, material: 'Plastique', activity: a25)

a26 = Activity.create!(longitude: 5.381114, latitude: 43.312581, user: djabirati)
w26 = Waste.create!(quantity: 1, material: 'Plastique', activity: a26)

a27 = Activity.create!(longitude: 5.368859, latitude: 43.316677, user: hugo)
w27 = Waste.create!(quantity: 5, material: 'Plastique', activity: a27)

a28 = Activity.create!(longitude: 5.392172, latitude: 43.337989, user: alain)
w28 = Waste.create!(quantity: 6, material: 'Plastique', activity: a28)

a29 = Activity.create!(longitude: 5.419216, latitude: 43.316060, user: naia)
w29 = Waste.create!(quantity: 1, material: 'Plastique', activity: a29)

a30 = Activity.create!(longitude: 5.417838, latitude: 43.263461, user: chris)
w30 = Waste.create!(quantity: 3, material: 'Plastique', activity: a30)
