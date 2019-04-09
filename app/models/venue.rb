class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :top_picks,
             :dependent => :destroy

  # Indirect associations

  has_many   :cuisines,
             :through => :dishes,
             :source => :cuisine

  # Validations

end
