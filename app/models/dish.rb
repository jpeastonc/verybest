class Dish < ApplicationRecord
  # Direct associations

  has_many   :top_picks,
             :dependent => :destroy

  belongs_to :cuisine

  # Indirect associations

  has_many   :venues,
             :through => :top_picks,
             :source => :venue

  # Validations

end
