# == Schema Information
#
# Table name: entrances
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  lat        :decimal(, )
#  long       :decimal(, )
#  line       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entrance < ActiveRecord::Base
	belongs_to :subway

	def self.text_search(query) #this makes a class method that gets used in the controller
  	self.where("name @@ :q or description @@ :q", :q => query)
  end
end
