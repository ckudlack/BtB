class Snippet < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body
end
