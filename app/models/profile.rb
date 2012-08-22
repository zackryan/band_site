class Profile < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length =>{:maximum =>400}
  belongs_to :user
end

