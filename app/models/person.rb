class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :practical_score, :written_score, :communication_score, :status, :picture

  has_attached_file :picture, :styles => { :slideshow => "x300" }, :default_url => '/assets/cat.jpg'

  def self.status_enum
    return {'Accepted' => 1, 'Maybe' => 0, 'Rejected' => -1}
  end

  def name
    return self.first_name + ' ' + self.last_name
  end
end
