class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name, :null => false, :default => "John"
      t.string :last_name, :null => false, :default => "Doe"
      t.integer :practical_score, :null => false, :default => 0
      t.integer :written_score, :null => false, :default => 0
      t.integer :communication_score, :null => false, :default => 0
      t.integer :status, :null => false, :default => 0
    end
  end
end
