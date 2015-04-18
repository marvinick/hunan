class Post < ActiveRecord::Base
  validates_presence_of :title, presence: true
  validates_presence_of :body, presence: true
  validates_uniqueness_of :title
  has_attached_file :image
  has_attached_file :resource
end
