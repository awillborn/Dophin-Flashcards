DECKNAMES = ["Deck 1", "Deck 2"]
DECKTOPICS = ["Spanish Level 1", "Spanish Level 2"]



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
          {question: "hello, beautiful", answer: "hola, bonita", deck_id: 2}]

CARDS.each do |attribs|
  Card.create(attribs)
end

ROUND = [{deck_id: 2, user_id: 1, number_correct: 8, number_wrong: 2}]

ROUND.each do |attribs|
  Round.create(attribs)
end
