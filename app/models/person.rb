class Person < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, length: {minimum:10}

  belongs_to :team, class_name: "Team", foreign_key: "team_id"

#  validates :team_id, presence: true
#  validates :manager, presence: true
#  validates :ismanagement, presence: true


end
