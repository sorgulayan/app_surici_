class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Suriçi'nde 200 kere banlanıp bütün inancıyla bıkmadan sıkılmadan tekrar gelen kardeşimiz kimdir?",
    [
      Answer("Yaşar", false),
      Answer("Doğukan", false),
      Answer("Arpakai Arda", true),
      Answer("Rumble Furkan", false),
    ],
  ));

  list.add(Question(
    "Alnının uzunluğu ile ünlü olan kardeşimiz kimdir?",
    [
      Answer("Enes", true),
      Answer("Cansu", false),
      Answer("Esat Su", false),
      Answer("Draven Onur", false),
    ],
  ));

  list.add(Question(
    "Hangisi Suriçi'nin zenginleri arasında yer almaz?",
    [
      Answer("Arda Özdemir", false),
      Answer("Mert Memiş", false),
      Answer("Enes Subaşı", false),
      Answer("Sorgulayan", true),
    ],
  ));

  list.add(Question(
    "Seslide sürekli fakir edebiyatı yapıp milyonluk saat alıp pc toplayan kişi kimdir?",
    [
      Answer("Özay", false),
      Answer("Ahmet Ordu", false),
      Answer("Yaşar", true),
      Answer("Sazciso", false),
    ],
  ));

  list.add(Question(
    "Suriçi'nde da aşırı rekabetçi kişiliğiyle tanınan ve sürekli 'yok mu? 5v5'imiz' replğiyle ünlü kişisi kimdir?",
    [
      Answer("Doka Yiğit", false),
      Answer("Darius Ahmet Hakan", false),
      Answer("Doğukan", false),
      Answer("Necosfer Salih ", true),
    ],
  ));

  list.add(Question(
    "Suriçi'nde herkesi her an trolleyen olup sakinliği ile insanları çileden çıkaran kişi kimdir ?",
    [
      Answer("Engin", false),
      Answer("Arda Özdemir", true),
      Answer("Fatih Başkan", false),
      Answer("Tuna", false),
    ],
  ));

  list.add(Question(
    "'Abi onu da yapmazsın ya' repliği ile ünlü, Çorlu Karteli kardeşimiz kimdir?",
    [
      Answer("Sorgulayan", false),
      Answer("Enes", false),
      Answer("Arda Özdemir", true),
      Answer("Remzi", false),
    ],
  ));

  list.add(Question(
    "Lolde pyke performansıyla ünlü olup, Warcraftta hissesi olan kişi kimdi?",
    [
      Answer("Arpakai Arda", false),
      Answer("Tuna", false),
      Answer("Doğukan", false),
      Answer("Enes", true),
    ],
  ));

  list.add(Question(
    "Tristina tr 2. liğine kadar yükselen isotçu kardeşimiz kimdir?",
    [
      Answer("Özay", false),
      Answer("Esat", true),
      Answer("Arda Özdemir", false),
      Answer("Ahmet Hakan", false),
    ],
  ));

  list.add(Question(
    "Ağaçlara tırmanmasıyla ünlü olan ve ağaçlarda fotoğraf çektiren patatesçi arkadaşımız kimdir?",
    [
      Answer("Berkay", true),
      Answer("Remzi", false),
      Answer("Mert", false),
      Answer("Ömer", false),
    ],
  ));

  list.add(Question(
    "Kindred oyunlarıyla ünlü, İTÜ'lü, ESM'de koçluk yapmış kardeşimiz kimdir?",
    [
      Answer("Ahmet Ordu", false),
      Answer("Sazciso", false),
      Answer("Hıdır", false),
      Answer("Doka Yiğit", true),
    ],
  ));

  list.add(Question(
    "Discordun marul lakabıyla ünlü boş yapmasıyla ünlü kardeşimiz kimdir?",
    [
      Answer("Salih", false),
      Answer("Furkan", false),
      Answer("Tuna", true),
      Answer("Özay", true),
    ],
  ));

  list.add(Question(
    "Saldırgan sokak köpeklerine karşı savunma olarak 'Ölü taklidi yap gider.'tezini ortaya atan kişi kimdir?",
    [
      Answer("Ege", false),
      Answer("Enes", true),
      Answer("Onur", false),
      Answer("Yaşar", false),
    ],
  ));

  list.add(Question(
    "Halkların kardeşliğini ve komünizmin tek kurtuluş olduğunu düşünmesine rağmen karı kız düşürmek için 3 kuruş paraya kendini madara eden kardeşimiz kimdir?",
    [
      Answer("Ahmet Hakan", false),
      Answer("TheCommunist Boss Berkay", true),
      Answer("Hıdır", false),
      Answer("Mert", false),
    ],
  ));

  list.add(Question(
    "Evde patates çuvalları ile dolu kileri olan Dersimli, Ünlü Arkeolog kardeşimiz kimdir?",
    [
      Answer("Hıdır", true),
      Answer("Ömer", false),
      Answer("Doğukan", false),
      Answer("Enes", false),
    ],
  ));

  list.add(Question(
    "Halen kimsenin neden Türkiye'de yaşamayı tecih ettiğini anlamlandıramayan, Tokatlı kardeşimiz kimdir?",
    [
      Answer("Cansu", false),
      Answer("Remzi", false),
      Answer("Enes", true),
      Answer("Engin", true),
    ],
  ));

  list.add(Question(
    "Beylikdüzü Pimapen A.Ş'nin kurucusu olup, Tr Rumble 1.si olan Makine Mühendisliği 3. sınıf terk kardeşimiz kimdir?",
    [
      Answer("Onur", false),
      Answer("Özay", false),
      Answer("Doka Yiğit", false),
      Answer("Furkan", true),
    ],
  ));

  list.add(Question(
    "Aşağıdakilerden hangisi animeci değildir?",
    [
      Answer("Doğukan", false),
      Answer("Enes", false),
      Answer("Özay", false),
      Answer("Hıdır", true),
    ],
  ));

  list.add(Question(
    "Son model Brodway arabasını TOGG ile takasa sunan, ağza tükürme fetişi olan abimiz kimdir?",
    [
      Answer("Fatih Başkan", false),
      Answer("Erdem Başkan", false),
      Answer("Remzi", false),
      Answer("Sazciso", true),
    ],
  ));

  list.add(Question(
    "Oyunlarda duvarları yumruklaması ve çıldırmasıyla ünlü olan, rehabilite altına alınmış ve ilaç tedavisine başlanmış psikolojisi bozuk kardeşimiz kimdir?",
    [
      Answer("Doğukan", true),
      Answer("Mert", false),
      Answer("Ahmet Hakan", false),
      Answer("Mert", false),
    ],
  ));

  return list;
}
