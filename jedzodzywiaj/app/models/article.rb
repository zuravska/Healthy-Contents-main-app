class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
end
