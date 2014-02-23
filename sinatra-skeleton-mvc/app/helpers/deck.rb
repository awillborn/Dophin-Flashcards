helpers do
    def assign_score(answer_eval)
      answer_eval ?
        Round.last.update_attributes(number_correct: Round.last.number_correct+1) :
        Round.last.update_attributes(number_wrong: Round.last.number_wrong+1)
  end
end
