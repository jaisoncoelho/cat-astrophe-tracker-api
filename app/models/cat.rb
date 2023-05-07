class Cat < ApplicationRecord
  validates :name, presence: true
  validates :picture, presence: true
  validates :personality, presence: true
end
