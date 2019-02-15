class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true

  mount_uploader :photo, PhotoUploader
end

# has a name
# name cannot be blank
# name is unique
# has many doses
# should destroy child doses when destroying self (FAILED - 1)
# has many ingredients (FAILED - 2)
