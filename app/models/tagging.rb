class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :clinic
  # attr_accessible :title, :body
end
