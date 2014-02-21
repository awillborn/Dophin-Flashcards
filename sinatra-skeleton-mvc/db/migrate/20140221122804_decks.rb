class Decks < ActiveRecord::Migration
  def change
    create_table(:decks) do |t|
      t.string :name
      t.string :topic
    end
end
