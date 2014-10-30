class Article < ActiveRecord::Base
  # Associations
  belongs_to :author, class_name: 'User'
  has_many :comments
  
  # Validations
  validates :title, presence: true
  validates :body, presence: true
  
  scope :published, -> { where published: true }
  scope :drafts,   -> { where published: false }
  
  # Hooks
  before_validation :set_slug, if: :new_record?
  
  def self.find_by_slug(slug)
    article = Article.where(slug: slug).first
    raise ActiveRecord::RecordNotFound if article.blank?
    article
  end
  
  def to_param
    slug
  end
  
  def set_slug
    self.slug = self.title.parameterize
  end
  
  
end
