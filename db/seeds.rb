Flirt.delete_all
Victim.delete_all

Flirt.create!([
  {message: "Darling! It's me, Freddie T. Remember our summer at gay camp?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Please stop sending me private messages telling me you want to 'bum' me...I have a boyfriend, and he is hot diggedy damn!!", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "How are you still single? Wanna mingle?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Shwing! My gaydar is off the scale playa!!!", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "If you were a vegetable you'd be a cute-cumber", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Mmmmm...man boobs :P", opening_line: true, suggested: false, tweet_id: nil, sent_before: false},
  {message: "I fucked tougher men than you in prison", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Last time I heard that I was laughing so hard, I fell off my dinosaur", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Look at us, we are just like the Sex and the City girls", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Do you mix concrete for a living? Because you're making me hard ", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Honey you can’t knock it until you try it", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "I don't see any penises in the general vicinity... So I'm wondering why you keep opening your fucking mouth", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "I'm very good at keeping secrets ;-) just FYI", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "You're so cute when you're angry and stupid.  Oh mama!", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Hey handsome, wanna do hands stuff?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Hey baby, you wanna slide into my DMs?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "You're just mad because I dress better than you", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "You're a double gay. No returnsies!", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "I don't know what makes you so stupid, but it really works!", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "What did you have for breakfast? Bitch Flakes?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Hey, that was quite a mouthful, but I guess you're used to that sort of thing", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Hey man, into new things?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Fuck me if I'm wrong, but is your name Easy Bottom?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "What's your star sign?  Leo?...Cancer?...don't tell me...Gemini?  Ok tell me :)", opening_line: true, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Hey, do you work out? What's your secret?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Your insecurity turns me on so bad", opening_line: false, suggested: false, tweet_id: nil, sent_before: true},
  {message: "You could do some sexy things with that anger.  I'm thinking about it now....stop it!", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Your body is 65% water and I'm thirsty", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "what do they say about men with big heads", opening_line: false, suggested: true, tweet_id: "571133886853283840", sent_before: false},
  {message: "I don't have a library card, but do you mind if I check you out?", opening_line: true, suggested: true, tweet_id: "571147314934390786", sent_before: true},
  {message: "If you walked in to a gay bar would you feel a dick?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "I love a man with passion.  So exciting!", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "So I'm responding to your gay ad in the gay times - how can I be of service?", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "You are adorable. I just want to cover you in spinkles and buy you presents", opening_line: true, suggested: false, tweet_id: nil, sent_before: true},
  {message: "Isn't this fun?", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "This is so us", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Call me!", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Quit playing games with my heart", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Is it hot in here?", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Don't hate. Educate.", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Kisses", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "You are so naughty.  And I like it", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Kisses", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "You are a little bit interesting on like one level", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "How much do you bench cutie?", opening_line: true, suggested: false, tweet_id: nil, sent_before: false},
  {message: "PILLOW FIGHT!!!!", opening_line: false, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Are you Jewish?  Because you Israeli hot.", opening_line: true, suggested: false, tweet_id: nil, sent_before: false},
  {message: "Hey trouble.  Do you still have my Kylie CD - I want it back, you're so naughty!", opening_line: true, suggested: false, tweet_id: nil, sent_before: false}
])
Victim.create!([
  {name: "FreshTheFirst", tweet_id: "570305366157885441"},
  {name: "whaleitsjanet", tweet_id: "571175794145423360"},
  {name: "iKeshusChrist", tweet_id: "569907505251422208"},
  {name: "radison_miley", tweet_id: "569722711834009600"},
  {name: "knowmetaylor", tweet_id: "569712867282460672"},
  {name: "3arabizy", tweet_id: "569689796404072450"},
  {name: "youngnatedog3", tweet_id: "569689580460498944"},
  {name: "SzuntiG", tweet_id: "568567722428252160"},
  {name: "Stache_Bot", tweet_id: "571205515184721920"},
  {name: "deshay_jas", tweet_id: "571203965003517952"},
  {name: "Bobby_Shatkus", tweet_id: "571199470874054656"},
  {name: "NegroidNelson", tweet_id: "571198713164644352"},
  {name: "mminetwo", tweet_id: "571196503378669568"},
  {name: "EvanoffHayden", tweet_id: "571194533947379713"},
  {name: "UnfuckabIe", tweet_id: "571190186794622976"},
  {name: "BasedJT", tweet_id: "571189943160033280"},
  {name: "ddvzzzz", tweet_id: "571188289534717952"},
  {name: "whik33dk", tweet_id: "571188241182932992"},
  {name: "deshay_jas", tweet_id: "571218936609398784"},
  {name: "WallahGypsy", tweet_id: "571228437236441088"},
  {name: "_bertman_", tweet_id: "571224916244049920"},
  {name: "Oppress0r", tweet_id: "571223498535919616"},
  {name: "HMBabee", tweet_id: "571220570202894336"},
  {name: "whaleitsjanet", tweet_id: "571290921226125312"},
  {name: "DishonParris", tweet_id: "571294784700096512"},
  {name: "wingsofwilson", tweet_id: "571296280808439808"}
])
