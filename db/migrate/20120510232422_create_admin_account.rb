class CreateAdminAccount < ActiveRecord::Migration
  def up
    User.create(:email => "admin@example.com", :password => "foobar", :password_confirmation => "foobar")
  end

  def down
    user = User.where(:email => "admin@example.com")
    user.try(:delete)
  end
end
