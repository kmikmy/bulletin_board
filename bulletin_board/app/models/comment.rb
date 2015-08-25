class Comment < ActiveRecord::Base
  validates :name, presence: true
  validates :mail_address, presence: true
end
