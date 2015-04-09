class Post < ActiveRecord::Base
  validates_presence_of :title, presence: true
  validates_presence_of :body, presence: true
  validates_uniqueness_of :title
end
