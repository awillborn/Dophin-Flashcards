DECKNAMES = ["Arabic Numbers", "Arabic Greetings"]
DECKTOPICS = ["Arabic Numbers", "Arabic Greetings"]

DECKNAMES.each_with_index{ |name, index| Deck.create(name: DECKNAMES[index], topic: DECKTOPICS[index]) }

USERS = [{username: "user1", password: "pass123"}, {username: "user2", password: "pass123"}]

USERS.each do |attribs|
  User.create(attribs)
end


CARDS = [{question: "واحد", answer: "one", deck_id: 1},
          {question: "اثنين", answer: "two", deck_id: 1},
          {question: "ثلاثة", answer: "three", deck_id: 1},
          {question: "كيفك", answer: "how are you?", deck_id: 2},
          {question: "صباح الخير", answer: "good morning", deck_id: 2},
          {question: "مرحبا", answer: "hello", deck_id: 2}]

CARDS.each do |attribs|
  Card.create(attribs)
end

ROUND = [{deck_id: 2, user_id: 1, number_correct: 8, number_wrong: 2}]

ROUND.each do |attribs|
  Round.create(attribs)
end
