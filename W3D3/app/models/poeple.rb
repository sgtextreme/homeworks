class People < ApplicationRecord
  # must have name, login, and email
  validates :name, :house_id
end