class AddPictureToPerson < ActiveRecord::Migration
  def change
    change_table :people do |t|
      t.has_attached_file :picture
    end
  end
end
