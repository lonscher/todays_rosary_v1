class PrayersService {
  final Map<String, String> _prayers = {
    'Apostles Creed':
        'I believe in God, the Father almighty, creator of heaven and earth, and in Jesus Christ, his only Son, our Lord, who was conceived by the Holy Spirit, born of the Virgin Mary, suffered under Pontius Pilate, was crucified, died, and was buried; he descended into hell; on the third day he rose again from the dead; he ascended into heaven, and is seated at the right hand of God, the Father almighty; from there he will come to judge the living and the dead. I believe in the Holy Spirit, the holy catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body, and life everlasting. Amen.',
    'Our Father':
        'Our Father, who art in heaven, hallowed be thy name; thy kingdom come; thy will be done on earth as it is in heaven. Give us this day our daily bread; and forgive us our trespasses, as we forgive those who trespass against us; and lead us not into temptation, but deliver us from evil. Amen.',
    'Hail Mary':
        'Hail Mary, full of grace, the Lord is with thee; blessed art thou among women, and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners, now and at the hour of our death. Amen.',
    'Glory Be':
        'Glory be to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now, and ever shall be, world without end. Amen.',
    'Fatima Prayer':
        'O my Jesus, forgive us our sins, save us from the fires of hell, lead all souls to heaven, especially those in most need of Thy mercy.',
    'Saint Michael Prayer':
        'Saint Michael the Archangel, defend us in battle, be our protection against the wickeness and snares of the Devil.  May God rebuke him, we humbly pray.  And do thou, O Prince of the Heavenly Host, by the Power of God, thrust into hell Satan and all evil spirits who wander the earth seeking the ruin of souls.  Amen.',
    'Act of Contrition':
        'My God, I am sorry for my sins with all my heart. In choosing to do wrong and failing to do good, I have sinned against you whom I should love above all things. I firmly intend, with your help, to do penance, to sin no more, and to avoid whatever leads me to sin. Our Savior Jesus Christ suffered and died for us. In his name, my God, have mercy.',
    'Rosary Prayer':
        'O God, Whose only-begotten Son, by His life, death, and resurrection, has purchased for us the rewards of eternal life; grant, we beseech Thee, that by meditating upon these mysteries of the Most Holy Rosary of the Blessed Virgin Mary, we may imitate what they contain and obtain what they promise, through the same Christ our Lord. Amen.',
    'Rosary Prayer 2':
        'O Mary, conceived without sin, pray for us who have recourse to thee.',
    'Hail Holy Queen':
        'Hail, Holy Queen, Mother of Mercy, our life, our sweetness, and our hope. To thee do we cry, poor banished children of Eve. To thee do we send up our sighs, mourning and weeping in this valley of tears. Turn then, most gracious advocate, thine eyes of mercy toward us; and after this our exile show unto us the blessed fruit of thy womb, Jesus. O clement, O loving, O sweet Virgin Mary! Pray for us, O holy Mother of God, that we may be made worthy of the promises of Christ.',
    'Rosary Prayer 5':
        'Let us pray for our Holy Father, the Pope, and for all bishops, priests, and deacons. May they be strengthened in their ministry and be faithful to their vocation. May they lead us in the ways of holiness and guide us to eternal life. Amen.',
    'Rosary Prayer 6':
        'Let us pray for the intentions of our Holy Father, the Pope. May he be blessed with wisdom and strength as he leads the Church. Amen.',
    'Rosary Prayer 7':
        'Let us pray for the intentions of our family and friends. May they be blessed with health, happiness, and peace. Amen.',
    'Rosary Prayer 8':
        'Let us pray for the intentions of all those who have asked for our prayers. May they be blessed with healing, comfort, and peace. Amen.',
    'Rosary Prayer 9':
        'Let us pray for the intentions of all those who are suffering. May they be blessed with strength, courage, and hope. Amen.',
    'Rosary Prayer 10':
        'Let us pray for the intentions of all those who are in need. May they be blessed with help, support, and love. Amen.',
    'Rosary Prayer 11':
        'Let us pray for the intentions of all those who are in pain. May they be blessed with relief, comfort, and peace. Amen.',
    'Rosary Prayer 12':
        'Let us pray for the intentions of all those who are in sorrow. May they be blessed with healing, comfort, and peace. Amen.',
    'Rosary Prayer 13':
        'Let us pray for the intentions of all those who are in distress. May they be blessed with strength, courage, and hope. Amen.',
    'Rosary Prayer 14':
        'Let us pray  for the intentions of all those who are in need of healing. May they be blessed with health, happiness, and peace. Amen.',
    'Rosary Prayer 15':
        'Let us pray for the intentions of all those who are in need of comfort. May they be blessed with healing, comfort, and peace. Amen.',
    'Rosary Prayer 16':
        'Let us pray  for the intentions of all those who are in need of peace. May they be blessed with strength, courage, and hope. Amen.',
    'Rosary Prayer 17':
        'Let us pray for the intentions of all those who are in need of support. May they be blessed with help, support, and love. Amen.',
  };

  Map<String, String> get prayers => _prayers;

  String fetchPrayer(String prayer) {
    return _prayers[prayer] ?? 'Prayer not found';
  }
}
