class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :suit
      t.integer :value
    end

    # Make all the cards!
    2.upto(14) do |value|
      Card::SUIT_NAMES.each_key do |suit|
        Card.create(:suit => suit, :value => value)
      end
    end
  end

  def self.down
    drop_table :cards
  end
end
