//! status=pending
on(dragOver,rollOver){
   if(_root.save.bestLevel >= 50)
   {
      _root.actiondescription = "Cost to feed: <b>" + _root.withComma(feedCost) + "</b> Coins\n\nIt\'s worth it, really!";
   }
   else
   {
      _root.actiondescription = "You have to be at least level 50 to feed the Dragon of Wisdom.";
   }
}


on(release){
   if(_root.save.coin >= feedCost && _root.save.bestLevel >= 50)
   {
      _root.save.coin -= feedCost;
      _root.gainBlueCoin(1,9999);
      if(_root.save.questType == "Dragon of Wisdom")
      {
         if(_root.save.questSubtype == "Feed")
         {
            _root.save.questCount += 1;
         }
      }
      _root.dispNews(121,"You have fed the Dragon of Wisdom! (-" + _root.withComma(feedCost) + " Coins)");
      _root.save.feedToday += 1;
      _root.save.feedTotal += 1;
      _root.save.knowledge += 1;
      selectedSpeech = random(totalSpeech);
      if(isNaN(_root.save.wisdomDiscovered[2]))
      {
         selectedSpeech = 2;
      }
      if(selectedSpeech == 1)
      {
         _root.save.theGame += 1;
      }
      _parent._parent.dragonSpeech.speech(speechList[selectedSpeech]);
      if(_root.save.feedTotal == 1000)
      {
         _parent._parent.dragonSpeech.speech("That\'s a lot of Coins! The seal of the sword seems to be gone now, and you can take it. It will be sealed again tomorrow though, so be quick.");
      }
      else if(!isNaN(_root.save.wisdomDiscovered[selectedSpeech]))
      {
         _root.save.wisdomDiscovered[selectedSpeech] += 1;
      }
      else
      {
         _root.save.wisdomDiscovered[selectedSpeech] = 1;
      }
      if(_root.dow == 5)
      {
         _root.save.feedMeter += 2;
      }
      else
      {
         _root.save.feedMeter += 1;
      }
      feedMult = (_root.save.feedTotal + 1) / 100;
      if(feedMult > 1)
      {
         feedMult = 1;
      }
      feedCost = Math.floor((100 + _root.save.feedToday * 2.5) * Math.sqrt(_root.save.bestLevel) * feedMult) * 500;
      _root.actiondescription = "Cost to feed: <b>" + _root.withComma(feedCost) + "</b> Coins\n\nIt\'s worth it, really!";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   feedMult = (_root.save.feedTotal + 1) / 100;
   if(feedMult > 1)
   {
      feedMult = 1;
   }
   feedCost = Math.floor((100 + _root.save.feedToday * 2.5) * Math.sqrt(Math.min(_root.save.bestLevel,9000)) * feedMult) * 500;
   if(_root.save.coin >= feedCost)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.coin >= feedCost && _root.save.bestLevel >= 50)
      {
         _root.save.coin -= feedCost;
         _root.gainBlueCoin(1,9999);
         if(_root.save.questType == "Dragon of Wisdom")
         {
            if(_root.save.questSubtype == "Feed")
            {
               _root.save.questCount += 1;
            }
         }
         _root.save.feedToday += 1;
         _root.save.feedTotal += 1;
         _root.save.knowledge += 1;
         selectedSpeech = random(totalSpeech);
         if(isNaN(_root.save.wisdomDiscovered[2]))
         {
            selectedSpeech = 2;
         }
         if(selectedSpeech == 1)
         {
            _root.save.theGame += 1;
         }
         _parent._parent.dragonSpeech.speech(speechList[selectedSpeech]);
         if(_root.save.feedToday == 200)
         {
            _parent._parent.dragonSpeech.speech("That\'s a lot of Coins! The seal of the sword seems to be gone now, and you can take it. It will be sealed again tomorrow though, so be quick.");
         }
         else if(!isNaN(_root.save.wisdomDiscovered[selectedSpeech]))
         {
            _root.save.wisdomDiscovered[selectedSpeech] += 1;
         }
         else
         {
            _root.save.wisdomDiscovered[selectedSpeech] = 1;
         }
         if(_root.dow == 5 || _root.saveid >= 10)
         {
            _root.save.feedMeter += 2;
         }
         else
         {
            _root.save.feedMeter += 1;
         }
         feedMult = (_root.save.feedTotal + 1) / 100;
         if(feedMult > 1)
         {
            feedMult = 1;
         }
         feedCost = Math.floor((100 + _root.save.feedToday * 2.5) * Math.sqrt(_root.save.bestLevel) * feedMult) * 500;
         _root.actiondescription = "Cost to feed: <b>" + _root.withComma(feedCost) + "</b> Coins\n\nIt\'s worth it, really!";
      }
   }
}


onClipEvent(load){
   speechList = new Array();
   speechList.push("I was last updated in version 1742.");
   speechList.push("YOU LOST THE GAME. And I didn\'t, because I\'m immune to \'THE GAME\'. Anyway, you lost the game.");
   speechList.push("You can press CTRL + S to view your stats.");
   speechList.push("If you use a MAC, use CMD key instead of CTRL for stuff!");
   speechList.push("My chat bubbles last for only 10 seconds. Listen... I mean, read quickly!");
   speechList.push("You need to pay Coins to feed me. But since you fed me just recently, you clearly know that.");
   speechList.push("The more you feed me, the more it costs to do so. But don\'t worry, the cost will reset tomorrow.");
   speechList.push("I think I\'ve been brainwashed recently... Why don\'t I remember anything?");
   speechList.push("I know lots of information! Well, I used to...");
   speechList.push("According to Tukkun, I will soon be updated with new information! I wonder if that\'s true?...");
   speechList.push("The Sword of Ascendant is now permanent! Just feed me 1,000 times, and it\'s yours, forever!");
   speechList.push("I think I\'ve been brainwashed recently... Why don\'t I remember anything?");
   speechList.push("Backup your savefile frequently! You can see the main menu for help with backing up your savefile.");
   speechList.push("If you\'re reading this, you should immediately backup your savefile. Don\'t lose your data!");
   speechList.push("This whole game is free to play and win! How awesome is that?");
   speechList.push("If you really like this game, how about pressing the Donate button in the main menu to make a donation? After all, this game has no premium content, you know!");
   speechList.push("I\'m supposed to tell you useful information when you feed me, but I\'m temporarily out of service...");
   if(_root.save.bestLevel >= 1337)
   {
      speechList.push("Hello! I am the Dragon if Wis- wait, I think I have introduced myself already...");
      speechList.push("o hai thar!");
      speechList.push("I exist thanks to someone named \'theyareclose\'. He designed me. He is awesome!");
      speechList.push("\'Dragon\', you say? I\'m just a picture attached on a wall. Dragons don\'t exist. Or maybe they do.");
      speechList.push("Wisdom isn\'t the only thing I provide!");
      speechList.push("Feed me to gain rewards! I\'ll give you something every time you fill the Feeding Reward Bar over there.");
      speechList.push("I know a lot of things you don\'t know. Trust me!");
      speechList.push("Some of the information I provide is really useful.\nThis one clearly isn\'t though. Better luck next time.");
      speechList.push("This game is updated pretty frequently, and I rarely keep up with updates. What I say might be outdated.");
      speechList.push("I hope I won\'t be removed in a future update. I mean, I miss the Bonus B... wait, I didn\'t even exist at that time! How come I know?");
      speechList.push("Sorry to tell you, but you have just wasted some Coins for nothing useful in return.");
      speechList.push("All dragons eat money. My personal favorite treat is Coins that are colored yellow, and I eat over 90 trillion of those per day. Seriously.");
      speechList.push("Other than Coins, I also love Grammar Pills. They are awesome.");
      speechList.push("I have trouble thinking of useful stuff to say, so I often repeat stuff I have already said. Hope you don\'t mind.");
      speechList.push("Don\'t forget. Triangles PWN everything.");
      speechList.push("An enneachiliakaihenagon is a hexagon with OVER 9000 sides!");
      speechList.push("Triangles PWN enneachiliakaihenagons.");
      speechList.push("You are playing \'Anti-Idle: The Game\', a game created by Tukkun for Kongregate only!");
      speechList.push("I wish Tukkun didn\'t program me to say stuff at all. Despite all the Coins I get, I feel really exhausted.");
      speechList.push("I usually tell things you already know though.");
      speechList.push("That \'Tukkun\' or so never agrees to learn ActionScript 3! I wonder what\'s so bad about it?");
      speechList.push("Someone called \'dragonewyn\' or so created the world map. I don\'t think he\'s a dragon though.");
      speechList.push("This game has an invisible badge! I was wandering around when I saw five weird-looking shapes. I hit the right-most one and gained a Kongregate point!");
      speechList.push("Who needs badges anyway!");
      speechList.push("You can log in to Kongregate to receive additional rewards, it seems.");
      speechList.push("Don\'t you think Kongregate points are pointless? But still, they\'re called \'points\'. I wonder why.");
      speechList.push("\'The EXPlosion\' update sure did take long to arrive.");
      speechList.push("Existing late does help. I don\'t have to get used to changes.");
      speechList.push("I love inflation. Thanks to inflation, I have more Coins to eat.");
      speechList.push("Actually, I don\'t know that much...");
      speechList.push("Hmmm...");
      speechList.push("Those messages in the preloader are pretty funny, too.");
      speechList.push("The release of \'The EXPlosion\' update caused 273,942 meaningless units of rage in the first day.");
      speechList.push("Erm... these Coins, they are for me, right? Om nom nom nom nom!");
      speechList.push("Too bad, there isn\'t an option to feed me without making me say something. Blah blah blah~");
      speechList.push("At least, I\'m good at spelling. I NEVR MISPELL WORDS!");
      speechList.push("Everyone has a life... some people even have three lives.");
      speechList.push("Believe.");
      speechList.push("It\'s hard to think of something interesting to tell you...");
      speechList.push("Do you know something I don\'t? Tell me in the comment section or forums, and I will steal your knowledge without permission. Probably.");
      speechList.push("This is getting repetitive...");
      speechList.push("Although I\'m from Mars, I can speak human language! Isn\'t it awesome?");
      speechList.push("The \'official\' abbreviation of this game\'s name is \'A: TG\', although \'AI: TG\' and \'AI\' are more commonly used by players.");
      speechList.push("The \'AI\' on that shield below there stands for \'Artificial Intelligence\'. The shield is automatically controlled somehow, it seems.");
      speechList.push("Please, try your best not to touch anything here except the \'Feed\' button. Use everything else at your own risk.");
      speechList.push("I spend 25 hours a day reading the forums. Isn\'t it funny how people keep asking questions that are clearly stated in the FAQ?");
      speechList.push("Aren\'t those yellow Coins useless? That\'s why you should feed me even more!\nJust kidding, Insta-Progress is epic, too. Feeding me is just as important though.");
      speechList.push("What was I trying to say... uh, nevermind.");
      speechList.push("How about YOU tell ME something interesting?");
      speechList.push("Yellow Coins are good for digestion.");
      speechList.push("Everyone says they want their house back, but nobody wants to rebuild it...");
      speechList.push("I got nothing.");
      speechList.push("We are not able to process your payment using your Anti-Idle account at this time.");
      speechList.push("Error Code #10417 -- Your request could not be processed at this time.");
      speechList.push("I\'m on a boat!");
      speechList.push("I know the pieces fit, because I watched them fall apart.");
      speechList.push("Hello again.");
      speechList.push("Just think of feeding me as an investment.");
      speechList.push("Reached Coin limit? FEED ME SOME MORE!!!");
      speechList.push("*insert funny joke here*");
      speechList.push("*insert another funny joke here*");
      speechList.push("*insert outdated meme here*");
      speechList.push("Hey, HEY! Are you listening?");
      speechList.push("I\'ve actually taste-tested all the type of Coins. Yellow ones are the best!");
      speechList.push("I heard you get a very special screen if you take the sword here, somewhere else in the game...");
      speechList.push("Nobody ever idles on this screen! Well, except some people.");
      speechList.push("I would decorate this cave, but all my saving get eaten. Mostly by me.");
      speechList.push("Do you think eating these Coins make me look fat?");
      speechList.push("I used to love Tower Defense games, but then I Tukkun Anti-Idle in the knee.");
      speechList.push("Which do you think is harder, level 10 opponent in TukkunFCG or THE MEGABOSS?");
      speechList.push("You\'re feeding me for a reason.");
      speechList.push("If you feed me again, I\'ll tell your fortune.");
      speechList.push("I got all these intriguing sayings from a topic on the game\'s forum.");
      speechList.push("I\'m NOT the one who destroyed your house!");
      speechList.push("Yellow coins are lemon-flavored, not banana.");
      speechList.push("I need some new boots... maybe the river has some?");
      speechList.push("Fishing takes place on another planet. That\'s why you don\'t see it in the World Map.");
      speechList.push("I was going to say an outdated meme, but then I took an arrow in the... oh wait, I\'m a dragon.");
      speechList.push("I used to spew outdated memes, then I realized it was only 8,500 aileron rolls for lunch in Athens.");
      speechList.push("The game is still loading its 0 gigabytes of music.");
      speechList.push("Shouldn\'t the Battle Arena character be really tired? I mean, he never sleeps, right?");
      speechList.push("This rock I am on is where the first yellow coins were made. I ate them, naturally.");
      speechList.push("What I\'m saying doesn\'t even make sense.");
      speechList.push("I\'m a dragon!");
      speechList.push("Losing is Fun! Wait, that\'s a different game. They never have coins for me, that\'s why I live here now.");
      speechList.push("I hate having to think of something to say whenever I receive Coins. I love Coins though.");
      speechList.push("I heard Green Coins are just regular ones painted green. Blue Coins aren\'t regular ones painted blue though, that\'s why they are so rare.");
      speechList.push("Have you noticed that the Anti-Idle logo in the very first screen is different every time you see it?");
      speechList.push("I was taking a walk in the World Map (how can you walk in a map anyway?) last night and saw something... scary... Have you seen it?");
      speechList.push("The binary in Binary Battlefield means \'Anti-Idle\'.");
      speechList.push("The Dragon Cave itself is a dragon.");
      speechList.push("People kill my brothers and sisters in the Dragon Cave... I hate those people.");
      speechList.push("Your name is spelled \'" + _root.save.displayName + "\'. See? I\'m good at spelling!");
      speechList.push("This is an opinion, not a fact.");
      speechList.push("Achievements used to be gem-shaped. I miss those days...");
      speechList.push("There used to be only 75 achievements. Look at how many there are now!");
      speechList.push("That newbie tutorial was so easy. It only required claiming 5 rewards!");
      speechList.push("Backup your savefile frequently! I really mean it.");
      speechList.push("Never forget to backup your savefile.");
      speechList.push("I repeat, always remember to backup your savefile!");
      speechList.push("I wonder how Randomfruits look like?");
      speechList.push("Actually, Ant Sprayers are supposed to generate ants. Isn\'t it ironic?");
      speechList.push("Need more help? Press F1! It\'s important in many cases.");
      speechList.push("... zzz...");
   }
   if(_root.save.bestLevel >= 2000)
   {
      speechList.push("You notice that sword below there? It has like 4,000 Attack and 14 Speed or so. Too bad, it\'s forbidden in the Battle Arena.");
      speechList.push("If only there were (or should it be \'was\'?) a way to pixelate that sword below there... or something else...");
      speechList.push("Actually, I do know of a way to bring that sword below there to the Battle Arena.");
      speechList.push("That sword below there is really heavy... only those who are Rank 40 or higher in the Battle Arena are powerful enough to wield it.");
      speechList.push("You cannot take that sword below there because of a seal... or so. But the seal can be broken easily if you feed me some more!!!");
      speechList.push("Even if you take that sword below there, you will still see the sword. That is an image drawn to mislead people, especially newbies.");
   }
   totalSpeech = speechList.length;
}


