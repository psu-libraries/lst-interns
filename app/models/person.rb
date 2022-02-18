class Person < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true, length: {minimum:10}
  validates :department, presence: true
  validates :manager, presence: true

  attr_writer :contact

#start test method
#  def convertPhone(contact)
#    @contact = contact
#    :contact => @contact.delete "-"
#    :contact = number_to_phone(@contact, area_code: true)
#  end

end
