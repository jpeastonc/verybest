class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :top_picks,
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :top_picks,
             :source => :dish

  has_many   :cuisines,
             :through => :dishes,
             :source => :cuisine

  # Validations

end
