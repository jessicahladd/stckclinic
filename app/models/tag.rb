class Tag < ActiveRecord::Base
	def new_admin
		@tags = Tag.all
	end
  attr_accessible :name
  has_many :taggings
  has_many :clinics, through: :taggings

  def to_s
  	name
  end
end
