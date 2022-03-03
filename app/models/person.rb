class Person < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, length: {minimum:10}

  belongs_to :team, class_name: "Team", foreign_key: "team_id"

#  validates :team_id, presence: true
#  validates :manager, presence: true
#  validates :ismanagement, presence: true

#  def backToTeam(person)
#    if person.ismanagement
#      Team.where(manager: person.id).each do |team|
#       message = "Back to " + team.team + " | "
#        link_to message, team
#      end
#    else
#      link_to "Back to Team", person.team
#    end
#  end

end
