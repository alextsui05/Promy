class Post < ApplicationRecord
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :song
  validates_attachment_content_type :song, content_type: /\Aaudio\/.*\Z/
end
