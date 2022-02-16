class Person < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, length: {minimum:10}
  validates :department, presence: true
  validates :manager, presence: true
end
