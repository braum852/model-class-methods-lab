class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
    #return all classifications
  end

  def self.longest
    Boat.longest.classifications
    #returns classifications for the longest boats
  end

end
