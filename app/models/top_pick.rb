class TopPick < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :dish

  # Indirect associations

  # Validations

end
