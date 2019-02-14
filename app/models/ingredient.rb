class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, uniqueness: true, presence: true
end

# has a name
#   name cannot be blank
#   name is unique
#   has many doses
#   should not be able to destroy self if has dose children
