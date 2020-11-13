class Event < ApplicationRecord
  
  validates :Name_of_Event, presence: true, length: { maximum: 30 }
  validates :Country, presence: true, length: { minimum: 2, maximum: 30 }
  validates :Description, presence: true, length: { minimum: 5, maximum: 1000 }
  validates :Distance_participating, presence: true
  validates :Date_of_Event, presence: true, numericality: { only_integer: true }, length: { is: 8 }

end