class Envelop < ActiveRecord::Base
has_many :comments
has_many :evidences
belongs_to :user

mount_uploader :picture, PictureUploader

end
