class Rounds < ActiveRecord::Migration
  def change
    create_table(:rounds) do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.integer    :number_correct, default: 0
      t.integer    :number_wrong, default: 0

      t.timestamps
    end
  end
end
