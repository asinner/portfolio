class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :article

  validates :author, :content, presence: true
end
