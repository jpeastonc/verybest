class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :dishes,
             :source => :venues

  # Validations

end
