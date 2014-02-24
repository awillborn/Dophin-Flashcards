DECKNAMES = ["Deck 1", "Deck 2", "Chemistry"]
DECKTOPICS = ["Spanish Level 1", "Spanish Level 2", "Heisenberg"]



DECKNAMES.each_with_index{ |name, index| Deck.create(name: DECKNAMES[index], topic: DECKTOPICS[index]) }

USERS = [{username: "user1", password: "pass123"}, {username: "user2", password: "pass123"}]

USERS.each do |attribs|
  User.create(attribs)
end


CARDS = [{question: "hello", answer: "hola", deck_id: 1},
          {question: "bye", answer: "adios", deck_id: 1},
          {question: "please", answer: "por favor", deck_id: 1},
          {question: "how are you?", answer: "como estas?", deck_id: 2},
          {question: "good morning", answer: "buenos dias", deck_id: 2},
          {question: "hello, beautiful", answer: "hola, bonita", deck_id: 2},
          {question:"What is the Caesium Chloride crystal structure? (abbreviation)", answer:"BCC", deck_id: 3},
          {question:"What is the Sodium Chloride (rock salt) crystal structure?", answer:"Cubic", deck_id: 3},
          {question:"What metal has the highest melting point?", answer:"Tungsten", deck_id: 3},
          {question:"What is the latin root for Gold (atomic symbol Au)", answer:"Aurum", deck_id: 3},
          {question:"What is Walter White's alter ego name", answer:"Heisenberg", deck_id: 3},
          {question:"What is the heaviest, non-radioactive element", answer:"Bismuth", deck_id: 3},
          {question:"What metal is the best conductor of electricity", answer:"Silver", deck_id: 3},
          {question:"The TCA/Krebs cycle is also known as the..", answer:"Citric Acid Cycle", deck_id: 3},
          {question:"ADP reacts with which coenzyme to produce ATP (abbreviation)", answer:"NADH", deck_id: 3},
          {question:"What is the net production of ATP through glycolysis (number)", answer:"2", deck_id: 3},
          {question:"What is the net production of ATP through the Krebs cycle (number)", answer:"36", deck_id: 3},
          {question:"The product of glycolysis is which compound?", answer:"Pyruvate", deck_id: 3},
          {question:"What is the metal at the center of a Heme compound?", answer:"Iron", deck_id: 3}]

CARDS.each do |attribs|
  Card.create(attribs)
end

ROUND = [{deck_id: 2, user_id: 1, number_correct: 8, number_wrong: 2}]

ROUND.each do |attribs|
  Round.create(attribs)
end
