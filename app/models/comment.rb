class Comment < ActiveRecord::Base
  validates :name, presence: true
  validates :mail_address, presence: true

  class << self
    def search query
      rel = order("id DESC")
      if query.present?
        rel = rel.where("name LIKE ? OR comment LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
