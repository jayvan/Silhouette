class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.text :first_name
      t.text :last_name
      t.integer :practical_score
      t.integer :written_score
      t.integer :communication_score
    end
  end

  def self.down
    drop_table :people
  end
end
