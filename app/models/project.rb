class Project < ActiveRecord::Base
  validates :title, :category, :description, :url, presence: true
end
