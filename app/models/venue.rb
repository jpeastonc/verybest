class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :top_picks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
