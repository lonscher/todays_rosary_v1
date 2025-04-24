class MysteryService {
  List<Mystery> fetchMystery(String mystery) {
    List<Mystery> mysteries = [];
    switch (mystery) {
      case 'Joyful':
        mysteries = [
          Mystery('The Annunciation', 'Luke 1:26-27', joyful1, 'Humility'),
          Mystery(
              'The Visitation', 'Luke 1:39-42', joyful2, 'Love of Neighbor'),
          Mystery('The Nativity', 'Luke 2:1-7', joyful3, 'Poverty'),
          Mystery('The Presentation in the Temple', 'Luke 2:21-24', joyful4,
              'Purity of Heart and Body'),
          Mystery('The Finding in the Temple', 'Luke 2:41-47', joyful5,
              'Devotion to Jesus')
        ];
      case 'Sorrowful':
        mysteries = [
          Mystery('The Agony in the Garden', 'Matthew 26:36-39', sorrowful1,
              'Obedience to God’s Will'),
          Mystery('The Scourging at the Pillar', 'Matthew 27:26', sorrowful2,
              'Mortification'),
          Mystery('The Crowning with Thorns', 'Matthew 27:27-29', sorrowful3,
              'Courage'),
          Mystery('The Carrying of the Cross', 'Mark 15:21-22', sorrowful4,
              'Patience'),
          Mystery('The Crucifixion and Death', 'Luke 23:33-46', sorrowful5,
              'Sorrow for our Sins'),
        ];
      case 'Glorious':
        mysteries = [
          Mystery('The Resurrection', 'Luke 24:1-5', glorious1, 'Faith'),
          Mystery('The Ascension', 'Mark 16:19', glorious2, 'Hope'),
          Mystery('The Descent of the Holy Spirit', 'Acts 2:1-4', glorious3,
              'Wisdom'),
          Mystery(
              'The Assumption', 'Luke 1:48-49', glorious4, 'Devotion to Mary'),
          Mystery('The Coronation of Mary', 'Revelation 12:1', glorious5,
              'Grace of a happy death'),
        ];
      case 'Luminous':
        mysteries = [
          Mystery('The Baptism of Christ in the Jordan', 'Matthew 3:16-17',
              luminous1, 'Openness to the Holy Spirit'),
          Mystery('The Wedding Feast at Cana', 'John 2:1-5', luminous2,
              'To Jesus through Mary'),
          Mystery('Jesus\' Proclamation of the\nComing of the Kingdom of God',
              'Mark 1:15', luminous3, 'Conversion'),
          Mystery('The Transfiguration', 'Matthew 17:1-2', luminous4,
              'Desire for holiness'),
          Mystery('The Institution of the Eucharist', 'Matthew 26:26',
              luminous5, 'Adoration'),
        ];
      default:
        mysteries = [
          Mystery('The Annunciation default', 'In the sixth month',
              'Luke 1:26-27', 'Humility'),
          Mystery('The Visitation', 'During those days', 'Luke 1:39-42',
              'Love of Neighbor'),
          Mystery('The Nativity', 'For today in the city of David', 'Luke 2:11',
              'Love of God'),
          Mystery('The Presentation at the Temple',
              'When the days were completed', 'Luke 2:22', 'Obedience'),
          Mystery('The Finding of Jesus at the Temple', 'After three days',
              'Luke 2:46', 'Joy')
        ];
    }
    return mysteries;
  }
}

class Mystery {
  String mystery;
  String verse;
  String verseText;
  String fruit;

  Mystery(this.mystery, this.verse, this.verseText, this.fruit);
}

String joyful1 = '''
In the sixth month, the angel Gabriel was sent from God to a town of Galilee called Nazareth, to a virgin betrothed to a man named Joseph, of the house of David, and the virgin's name was Mary.
''';
String joyful2 = '''
During those days she set out and traveled to the hill country in haste to a town of Judah, where she entered the house of Zechariah and greeted Elizabeth.
''';
String joyful3 = '''
For today in the city of David a savior has been born for you who is Messiah and Lord.
''';
String joyful4 = '''
When the days were completed for their purification according to the law of Moses, they took him up to Jerusalem to present him to the Lord.
''';
String joyful5 = '''
After three days they found him in the temple, sitting in the midst of the teachers, listening to them and asking them questions.
''';
String sorrowful1 = '''
Then Jesus came with them to a place called Gethsemane, and he said to his disciples, 'Sit here while I go over there and pray.' He took along Peter and the two sons of Zebedee, and began to feel sorrow and distress. Then he said to them, 'My soul is sorrowful even to death. Remain here and keep watch with me.' He advanced a little and fell prostrate in prayer, saying, 'My Father, if it is possible, let this cup pass from me; yet, not as I will, but as you will.'
''';
String sorrowful2 = '''
Then he released Barabbas to them, but after he had Jesus scourged, he handed him over to be crucified.
''';
String sorrowful3 = '''
Then the soldiers of the governor took Jesus inside the praetorium and gathered the whole cohort around him. They stripped off his clothes and threw a scarlet military cloak about him. Weaving a crown out of thorns, they placed it on his head, and a reed in his right hand. And kneeling before him, they mocked him, saying, 'Hail, King of the Jews!'
''';
String sorrowful4 = '''
They pressed into service a passer-by, Simon, a Cyrenian, who was coming in from the country, the father of Alexander and Rufus, to carry his cross. They brought him to the place of Golgotha (which is translated Place of the Skull).
''';
String sorrowful5 = '''
When they came to the place called the Skull, they crucified him and the criminals there, one on his right, the other on his left. [Then Jesus said, 'Father, forgive them, they know not what they do.'] They divided his garments by casting lots. The people stood by and watched; the rulers, meanwhile, sneered at him and said, 'He saved others, let him save himself if he is the chosen one, the Messiah of God.' Even the soldiers jeered at him. As they approached to offer him wine they called out, 'If you are King of the Jews, save yourself.' Above him there was an inscription that read, 'This is the King of the Jews.' Now one of the criminals hanging there reviled Jesus, saying, 'Are you not the Messiah? Save yourself and us.' The other, however, rebuking him, said in reply, 'Have you no fear of God, for you are subject to the same condemnation? And indeed, we have been condemned justly, for the sentence we received corresponds to our crimes, but this man has done nothing criminal.' Then he said, 'Jesus, remember me when you come into your kingdom.' He replied to him, 'Amen, I say to you, today you will be with me in Paradise.'

"It was now about noon and darkness came over the whole land until three in the afternoon because of an eclipse of the sun. Then the veil of the temple was torn down the middle. Jesus cried out in a loud voice, 'Father, into your hands I commend my spirit'; and when he had said this he breathed his last.
''';
String glorious1 = '''
But at daybreak on the first day of the week they took the spices they had prepared and went to the tomb.They found the stone rolled away from the tomb; but when they entered, they did not find the body of the Lord Jesus. While they were puzzling over this, behold, two men in dazzling garments appeared to them. They were terrified and bowed their faces to the ground. They said to them, 'Why do you seek the living one among the dead? He is not here, but he has been raised.'
''';
String glorious2 = '''
So then the Lord Jesus, after he spoke to them, was taken up into heaven and took his seat at the right hand of God.
''';
String glorious3 = '''
When the time for Pentecost was fulfilled, they were all in one place together. And suddenly there came from the sky a noise like a strong driving wind, and it filled the entire house in which they were. Then there appeared to them tongues as of fire, which parted and came to rest on each one of them. And they were all filled with the holy Spirit and began to speak in different tongues, as the Spirit enabled them to proclaim.
''';
String glorious4 = '''
Behold, from now on will all ages call me blessed.
The Mighty One has done great things for me,
and holy is his name.
''';
String glorious5 = '''
A great sign appeared in the sky, a woman clothed with the sun, with the moon under her feet, and on her head a crown of twelve stars.
''';
String luminous1 = '''
After Jesus was baptized, he came up from the water and behold, the heavens were opened for him, and he saw the Spirit of God descending like a dove and coming upon him. And a voice came from the heavens, saying, 'This is my beloved Son, with whom I am well pleased.'
''';
String luminous2 = '''
On the third day there was a wedding in Cana in Galilee, and the mother of Jesus was there. Jesus and his disciples were also invited to the wedding. When the wine ran short, the mother of Jesus said to him, 'They have no wine.' [And] Jesus said to her, 'Woman, how does your concern affect me? My hour has not yet come.' His mother said to the servers, 'Do whatever he tells you.'
''';
String luminous3 = '''
'This is the time of fulfillment. The kingdom of God is at hand. Repent, and believe in the gospel.'
''';
String luminous4 = '''
After six days Jesus took Peter, James, and John his brother, and led them up a high mountain by themselves. And he was transfigured before them; his face shone like the sun and his clothes became white as light.
''';
String luminous5 = '''
While they were eating, Jesus took bread, said the blessing, broke it, and giving it to his disciples said, 'Take and eat; this is my body.'
''';
