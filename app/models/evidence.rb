class Evidence < ActiveRecord::Base
belongs_to :envelop

mount_uploader :attachment, AttachmentUploader

end
