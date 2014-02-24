DECKNAMES = ["Arabic", "French", "Chemistry"]
DECKTOPICS = ["Arabic", "French", "Chemistry"]


DECKNAMES.each_with_index{ |name, index| Deck.create(name: DECKNAMES[index], topic: DECKTOPICS[index]) }

USERS = [{username: "user1", password: "pass123"}, {username: "user2", password: "pass123"}]

USERS.each do |attribs|
  User.create(attribs)
end


CARDS = [{question: "واحد", answer: "one", deck_id: 1},
          {question: "اثنين", answer: "two", deck_id: 1},
          {question: "ثلاثة", answer: "three", deck_id: 1},
          {question: "كيفك", answer: "how are you?", deck_id: 1},
          {question: "صباح الخير", answer: "good morning", deck_id: 1},
          {question: "مرحبا", answer: "hello", deck_id: 1},
          {question: "d'accord", answer: "OK", deck_id: 1},
            {question: "qui", answer: "who", deck_id: 2},
            {question: "quand", answer: "when", deck_id: 2},
            {question: "où", answer: "where", deck_id: 2},
            {question: "pourquoi", answer: "why", deck_id: 2},
            {question: "comment", answer: "how", deck_id: 2},
            {question: "Parlez-vous anglais?", answer: "Do you speak English?", deck_id: 2},
            {question: "et", answer: "and", deck_id: 2},
            {question: "s'il vous plaît", answer: "please", deck_id: 2},
            {question: "merci ", answer: "thank you", deck_id: 2},
              {question:"What is the Caesium Chloride crystal structure? (abbreviation)", answer:"BCC", deck_id: 3},
              {question:"What is the Sodium Chloride (rock salt) crystal structure?", answer:"Cubic", deck_id: 3},
              {question:"What metal has the highest melting point?", answer:"Tungsten", deck_id: 3},
              {question:"What is the latin root for Gold (atomic symbol Au)?", answer:"Aurum", deck_id: 3},
              {question:"What is Walter White's alter ego name?", answer:"Heisenberg", deck_id: 3},
              {question:"What is the heaviest, non-radioactive element?", answer:"Bismuth", deck_id: 3},
              {question:"What metal is the best conductor of electricity?", answer:"Silver", deck_id: 3},
              {question:"The TCA/Krebs cycle is also known as the..", answer:"Citric Acid Cycle", deck_id: 3},
              {question:"ADP reacts with which coenzyme to produce ATP? (abbreviation)", answer:"NADH", deck_id: 3},
              {question:"What is the net production of ATP through glycolysis? (number)", answer:"2", deck_id: 3},
              {question:"What is the net production of ATP through the Krebs cycle? (number)", answer:"36", deck_id: 3},
              {question:"The product of glycolysis is which compound?", answer:"Pyruvate", deck_id: 3},
              {question:"What is the metal at the center of a Heme compound?", answer:"Iron", deck_id: 3}]

CARDS.each do |attribs|
  Card.create(attribs)
end

ROUND = [{deck_id: 2, user_id: 1, number_correct: 8, number_wrong: 2}]

ROUND.each do |attribs|
  Round.create(attribs)
end
