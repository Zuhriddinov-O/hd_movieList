class Horror {
  String title, description, duration, type, url;
  int date, id;

  Horror(
      {required this.id,
      required this.title,
      required this.date,
      required this.duration,
      required this.type,
      required this.description,
      required this.url});
}

class Love {
  String title, description, duration, type, url;
  int date, id;

  Love(
      {required this.id,
      required this.title,
      required this.date,
      required this.duration,
      required this.type,
      required this.description,
      required this.url});
}

class Cartoon {
  String title, description, duration, type,url;
  int date, id;

  Cartoon(
      {required this.id,
      required this.title,
      required this.date,
      required this.duration,
      required this.type,
      required this.url,
      required this.description});
}

class War {
  String title, description, duration, type,url;
  int date, id;

  War(
      {required this.id,
      required this.title,
      required this.date,
      required this.duration,
      required this.type,
      required this.url,
      required this.description});
}

List<Horror> horrorDetails = [
  Horror(
      id: 0,
      title: "No title",
      date: 2021,
      duration: "1 hr 23 min",
      type: "Horror",
      url: "assets/videos/video_1.mp4",
      description:
          "The Heiress is a classic drama film released in 1949 that tells the story of a wealthy and plain-looking young woman named Catherine Sloper, played beautifully by Olivia de Havilland. Catherine is the daughter of Dr. Austin Sloper, a prominent surgeon who is still grieving the loss of his wife, who died giving birth to Catherine, many years ago."),
  Horror(
      id: 1,
      title: "Every body has a secret.",
      date: 2016,
      duration: "1 hr 26 min",
      type: "Horror",
      url: "assets/videos/video_2.mp4",
      description:
          "The Autopsy of Jane Doe is a horror movie released in 2016. The movie stars Brian Cox and Emile Hirsch as father and son coroners who run a family business in a small town. Ophelia Lovibond also stars as a love interest of Emile Hirsch's character, who happens to be a medical examiner. The story begins with a Sheriff who brings a body of an unidentified woman to the coroners' office. The body is discovered at the scene of a gruesome multiple homicide, and there is no evidence related to the woman's identity. The father-son duo starts the autopsy on the woman, and as they proceed with their work, they find unusual and bizarre things about the body. The more they get into the autopsy, the more dangerous and horrifying things start happening around them, leading them to conclude that what they thought was a routine autopsy is no longer the case."),
  Horror(
      id: 2,
      title: "No one ever comes back",
      date: 2019,
      duration: "1 hr 23 min",
      type: "Horror",
      url: "assets/videos/video_5.mp4",
      description:
          "Clinton Road is a 2019 horror movie that follows a group of friends as they embark on a road trip to explore the infamous Clinton Road in New Jersey. The road is known for its eerie reputation and mysterious happenings, including unexplained disappearances and sightings of supernatural creatures. The group, consisting of Michael (Ace Young), Jessica (Erin O'Brien), and Lance (Cody Calafiore), aims to document their experience on the road for their online channel."),
  Horror(
      id: 3,
      title: "Kids love to spook each other.",
      date: 2016,
      duration: "1 hr 27 min",
      type: "Horror",
      url: "assets/videos/video_7.mp4",
      description:
          "When a reconstructed family moves to a converted church in the country, 14-year-old Molly soon realizes that she has a gift and must use it; she has to face her deepest fears, and save her troubled step-sister from a dangerous relationship with the ghost of a lonely little girl."),
  Horror(
      id: 4,
      title: "Store Your Fear Here",
      date: 2018,
      duration: "1 hr 20 min",
      type: "Horror",
      url: "assets/videos/video_11.mp4",
      description:
          "In this horror thriller, a young nun confronts a horrible situation when she's trapped in a deserted building after hours. This film is not connected to The Conjuring franchise and should not be confused with the 2018 film The Nun (or the also unrelated The Bad Nun)."),
  Horror(
      id: 5,
      title: "She's every woman you'll never know....",
      date: 2014,
      duration: "1 hr 20 min",
      type: "Horror",
      url: "assets/videos/video_26.mp4",
      description:
          "In The Girl On The Train, a documentary film maker gets on a train in New York to interview people who will star in his new project. However, he meets a girl on the train who changes the course of his project. The movie explores the fact that there is sometimes a fine line between what is real and what is imagined."),
  Horror(
      id: 6,
      title: "Once you see him, nothing can save you.",
      date: 2012,
      duration: "1 hr 50 min",
      type: "Horror",
      url: "assets/videos/video_13.mp4",
      description:
      " Sinister takes horror movies based on the paranormal to a whole new level. What starts as a crime novelist moving himself and his family into a home where an entire family were murdered, except one child who went missing. The novelist intends to use the murders as the inspiration for his newest book.In the attic of the house the novelist finds a super eight projector and some innocently labelled movies that are far from what they should be. He watches the movies and is horrified by what they reveal. The opening scene of the movie itself is a home movie type footage piece depicting a family of four with bags over their heads and nooses around their necks under a tree. Someone off frame is sawing at a limb that is holding the branch the nooses are tied to and when it is cut through the entire family is sent into the air and strangled. This movie when found in the attic is labelled Family Hanging Out '11. "),
  //0 - Horrors//3 - War
];
List<Love> loveDetails = [
  Love(
      id: 0,
      title: "Love doesn't come cheap.",
      date: 2005,
      duration: "1 hr 30 min",
      type: "Love",
      url: "assets/videos/video_0.mp4",
      description:
          "The Wedding Date is a romantic comedy film that was released in 2005. The movie is directed by Clare Kilner and stars Dermot Mulroney, Debra Messing, and Jack Davenport. The plot of the film follows the story of Kat Ellis (played by Debra Messing), a single woman who is in a bind. Her sister is getting married in London, and she wants to attend the wedding to show off her new boyfriend to her ex-fiance, who happens to be the best man at the wedding. The problem is that she doesn't have a boyfriend."),
  Love(
      id: 1,
      title: "No title",
      date: 2013,
      duration: "1 hr 31 min",
      type: "Love",
      url: "assets/videos/video_12.mp4",
      description:
          "A deadly affair leads to a brutal murder which takes Dillon and Stacy into an evil world of the undead."),
  Love(
      id: 2,
      title: "You think you know who you are. You have no idea.",
      date: 2004,
      duration: "1 hr 52 min",
      type: "Love",
      url: "assets/videos/video_19.mp4",
      description:
          "Crash is a beautifully crafted film from 2004 that explores the complexities of race and prejudice through a series of interconnected stories set in Los Angeles. The movie was directed by Paul Haggis and boasts an ensemble cast that includes Don Cheadle, Sandra Bullock, Thandiwe Newton, Matt Dillon, Ryan Phillippe, and Ludacris. The movie opens with a car crash on a busy Los Angeles freeway. This accident serves as a catalyst for several seemingly unrelated stories to collide and intertwine. Over the course of the next two hours, we are taken on a journey through the lives of several characters, all of whom are struggling with their own biases and prejudices."),
  Love(
      id: 3,
      title: "No title",
      date: 1985,
      duration: "1 hr 47 min",
      type: "Love",
      url: "assets/videos/video_21.mp4",
      description:
          "Vision Quest is a coming-of-age sports drama film of 1985 directed by Harold Becker, based on Terry Davis' novel of the same name. It features an impressive ensemble cast, including Matthew Modine, Linda Fiorentino, Michael Schoeffling, Ronny Cox, Harold Sylvester, and Madonna. The movie revolves around Louden Swain (Matthew Modine), a high school senior from Spokane, Washington, who is undergoing an identity crisis. He is confused regarding his future, life goals, and the meaning of existence. Louden comes from a middle-class family and feels the need to break away from all that is familiar to him. He decides to pursue wrestling, and it becomes his singular focus. He abandons his social life, quits his job, and becomes a detachment from his parents. He's determined to lose weight, gain strength, and become the best wrestler his high school has ever produced."),
  Love(
      id: 4,
      title: "The most dangerous love story ever told.",
      date: 2013,
      duration: "1 hr 58 min",
      type: "Love",
      url: "assets/videos/video_23.mp4",
      description:
          "Romeo and Juliet is a 2013 romantic drama film adaptation of the world-famous play by William Shakespeare. Starring Hailee Steinfeld as Juliet and Douglas Booth as Romeo, the film tells the classic tale of two young lovers from rival families who fall in love at first sight but are doomed by fate to suffer a tragic end. The movie opens in Verona, Italy, where the Capulets and Montagues have been feuding for generations. The young and impulsive Romeo attends a party at the Capulet mansion hoping to catch a glimpse of his love Rosaline, but instead he meets Juliet, the daughter of the Capulet patriarch. The two instantly fall in love and share a passionate kiss, unaware of the bitter rivalry between their families."),
];
List<Cartoon> cartoonDetails = [
  Cartoon(
      id: 0,
      title: "The incredible true story of America's top underdog",
      date: 2018,
      duration: "1 hr 25 min",
      type: "Cartoon",
      url: "assets/videos/video_3.mp4",
      description:
          "A stray dog - Sgt. Stubby - gets adopted by a soldier while training for World War I. For his valorous actions, Sgt. Stubby is still recognized as the most decorated dog in American history. Sgt. Stubby: An American Hero is a 2018 animated movie with a runtime of 1 hour and 25 minutes. It has received moderate reviews from critics and viewers, who have given it an IMDb score of 6.9 and a MetaScore of 58."),
  Cartoon(
      id: 1,
      title: "Discover the Adventure Behind the Greatest Mystery of our Time.",
      date: 1997,
      duration: "1 hr 34 min",
      type: "Cartoon",
      url: "assets/videos/video_9.mp4",
      description:
          "Anastasia is a dazzling animated musical movie that tells the story of the last surviving member of the Russian royal family, Anastasia Romanov. The movie, created by Fox Animation Studios, was released in 1997, and quickly captured the hearts of audiences all over the world with its captivating storyline, stunning animation, and unforgettable music."),
  Cartoon(
      id: 2,
      title: "Life's greatest adventures begin with a single... Leap!",
      date: 2017,
      duration: "1 hr 29 min",
      type: 'Cartoon',
      url: "assets/videos/video_10.mp4",
      description:
          "Leap! is a 2016 animated movie that follows the story of an 11-year-old orphan girl named FÃ©licie Milliner (voiced by Elle Fanning) who dreams of becoming a ballerina. Growing up in an orphanage in rural France, FÃ©licie finally seizes the opportunity to escape with her best friend Victor (voiced by Dane DeHaan) to pursue her passion in the City of Lights - Paris."),
  Cartoon(
      id: 3,
      title: "Still together. Still lost!",
      date: 2008,
      duration: "1 hr 29 min",
      type: 'Cartoon',
      url: "assets/videos/video_14.mp4",
      description:
          "Madagascar: Escape 2 Africa is a 2008 animated comedy film that follows the adventures of the four animal friends, Alex the Lion (voiced by Ben Stiller), Marty the Zebra (voiced by Chris Rock), Melman the Giraffe (voiced by David Schwimmer), and Gloria the Hippopotamus (voiced by Jada Pinkett Smith). The movie starts off with the four animals attempting to fly back to their home in New York City, but their makeshift airplane crashes in the African wilderness. They soon discover that they are not the only animals in Africa, as they come across an entire herd of zebras that resemble Marty."),
  Cartoon(
      id: 4,
      title: "An immortal legend. As you've only imagined.",
      date: 1999,
      duration: "1 hr 28 min",
      type: "Cartoon",
      url: "assets/videos/video_15.mp4",
      description:
          "Tarzan is a 1999 animated adventure film produced by Walt Disney Feature Animation and directed by Chris Buck and Kevin Lima. The film is based on Edgar Rice Burroughs' novel Tarzan of the Apes and is the 37th animated feature in the Walt Disney Animated Classics series. The film follows the story of Tarzan, a young orphaned human boy who is adopted and raised by a family of gorillas after his parents are killed by a ruthless leopard named Sabor. Tarzan, voiced by Tony Goldwyn, grows up with his gorilla family and develops unique abilities to swing through the trees and communicate with the animal kingdom. However, Tarzan is constantly reminded of his differences from the other gorillas, causing him to feel like he doesn't truly belong."),
  Cartoon(
      id: 5,
      title: "UH-OH.",
      date: 1999,
      duration: "1 hr 21 min",
      type: "Cartoon",
      url: "assets/videos/video_16.mp4",
      description:
          'Watch South Park: Bigger, Longer & Uncut Online! The film is based on the popular animated sitcom South Park. The movie follows the story of four young boys, Stan, Kyle, Cartman, and Kenny, as they go on a new adventure. The movie starts in the quiet mountain town of South Park where the kids are excited to see the new movie featuring their favorite TV characters, Terrance and Phillip.'),
  Cartoon(
      id: 6,
      title: "A Pawsome 3D Adventure.",
      date: 2010,
      duration: "1 hr 18 min",
      type: "Cartoon",
      url: "assets/videos/video_24.mp4",
      description:
          "Alpha and Omega is a 2010 animated adventure-comedy film that revolves around the story of two young wolves, named Kate and Humphrey. The film is directed by Ben Gluck and Anthony Bell and features the voices of Hayden Panettiere, Christina Ricci, and Justin Long. The story takes place in the heart of Canada's Jasper National Park, where a pack of wolves inhabits. The pack is divided into two groups: the Alpha wolves, who are the leaders and protectors of the pack, and the Omega wolves, who are the subordinate and have no power or say in the group. Kate is an Alpha wolf and is expected to marry Garth, the son of the leader of the rival Eastern pack, to unite the two packs and end the longstanding feud between them."),
  //2 - Cartoon
];
List<War> warDetails = [
  War(
      id: 0,
      title: "No title",
      date: 2017,
      duration: "1 hr 46 min",
      type: "War",
      url: "assets/videos/video_4.mp4",
      description:
          "Invasion Earth is a 2016 science fiction thriller film that captures the essence of extraterrestrial invasions and earth-defending missions. It is directed by James Twyman and stars Cameron Bell, Jon-Paul Gates, and Steven M. Smith. The movie is set in the year 2022, and the world is experiencing a unique and strange anomaly. The entire planet is experiencing a state of chaos, and strange phenomena are occurring in many places. There is a significant increase in the number of UFO sightings as the world witnesses a gradual descent into mayhem."),
  War(
      id: 1,
      title: "On the battlefield, one bullet can change everything.",
      date: 2022,
      duration: "2 hr",
      type: "War",
      url: "assets/videos/video_6.mp4",
      description:
          "Sniper: The White Raven is a dramatic war film from 2022 that delves into the themes of vengeance, redemption, and the human spirit's resilience amidst the brutal realities of conflict. Directed by Marian Bushan, the film is set against the backdrop of the war-torn landscapes of Eastern Ukraine and is inspired by true events, painting a vivid picture of a region riddled with violence and political instability."),
  War(
      id: 2,
      title: "Still the man, any questions?",
      date: 2000,
      duration: "1 hr 39 min",
      type: "War",
      url: "assets/videos/video_17.mp4",
      description:
          "Shaft is a movie from the year 2000 that brings back the iconic character John Shaft, played by Samuel L. Jackson. This film is a follow up to the Shaft movies made in the 1970s and 80s. This time, Shaft is a detective in New York City, working to take down drug kingpin Walter Wade Jr., played by Christian Bale. Wade Jr. has just been released on bail for a murder charge and is now out to clear his name and continue his drug empire. Along the way, Shaft reconnects with his former love interest, played by Vanessa Williams, who also happens to be Wade Jr.'s childhood friend."),
  War(
      id: 3,
      title: "The battle for eternity begins",
      date: 2016,
      duration: "2 hr 7 min",
      type: "War",
      url: "assets/videos/video_18.mp4",
      description:
          "Gods of Egypt is a fantasy-action movie that takes place in ancient Egypt. The movie is directed by Alex Proyas and features a star-studded cast, including Brenton Thwaites, Nikolaj Coster-Waldau, and Gerard Butler. The story follows Bek, a mortal thief who teams up with Horus, the god of the sky, to rescue his love interest Zaya from the clutches of Set, the god of the desert, who has taken over the throne of Egypt and plans to destroy the world. The two embark on a dangerous journey through the underworld and the afterlife, facing various challenges and monsters along the way, to retrieve Horus' stolen eyes, which are the key to defeating Set."),
  War(
      id: 4,
      title: "No title",
      date: 1965,
      duration: "2 hr 45 min",
      type: "War",
      url: "assets/videos/video_20.mp4",
      description:
          "In Harm's Way is a 1965 American epic war film directed by Otto Preminger and starring an ensemble cast including John Wayne, Kirk Douglas, Patricia Neal, Tom Tryon, Paula Prentiss, Stanley Holloway, Burgess Meredith, Brandon De Wilde, Jill Haworth, Dana Andrews, Franchot Tone, and Henry Fonda. The movie is based on James Bassett's novel Harm's Way, which tells the story of a Navy officer's personal and professional struggles as he tries to survive the aftermath of the Japanese attack on Pearl Harbor and the subsequent Pacific War."),
  War(
      id: 5,
      title: "The hunt has evolved.",
      date: 2018,
      duration: "1 hr 47 min",
      type: "War",
      url: "assets/videos/video_25.mp4",
      description:
          "The Predator from 2018 is a science fiction action movie directed by Shane Black and is a partial sequel to the 1987 film Predator. The movie stars Boyd Holbrook, Trevante Rhodes, Jacob Tremblay, Keegan-Michael Key, Olivia Munn, and Sterling K. Brown. The story of the movie starts when a group of former soldiers and a biologist come together to fight an alien predator who comes to Earth to hunt humans. The Predator from 2018 is a sequel to previous Predator movies, but it is a standalone movie that can be enjoyed by people who did not watch the previous installments."),
  War(
      id: 6,
      title: "No title",
      date: 2018,
      duration: "1 hr 28 min",
      type: "War",
      url: "assets/videos/video_8.mp4",
      description:
          "Megalodon is a 2018 action horror movie that dives into the depths of the ocean to reveal a prehistoric predator that is still alive and well. Directed by James Thomas and produced by the production company The Asylum, Megalodon stars Michael Madsen, Caroline Harris, and Ego Mikitas in leading roles. The movie begins with a team of Navy Seals on a mission that takes them to the bottom of the ocean. While there, they are attacked by a massive shark that leaves them stranded without any means of communication. They are, however, able to send a distress signal which is picked up by a group of scientists on a nearby research vessel."),
];
