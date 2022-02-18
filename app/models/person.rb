class Person < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, length: {minimum:10}
#  validates :team_id, presence: true
#  validates :manager, presence: true
#  validates :ismanagement, presence: true

#start test method
#  def convertPhone(contact)
#    @contact = contact
#    :contact => @contact.delete "-"
#    :contact = number_to_phone(@contact, area_code: true)
#  end

end
