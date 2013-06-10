class Comment < ActiveRecord::Base
  belongs_to :clinic
  attr_accessible :author_name, :body
end
