class Cards < ActiveRecord::Migration
  def change
    create_table(:cards) do |t|
      t.text     :question
      t.string     :answer
      t.belongs_to :deck
    end
  end
end
