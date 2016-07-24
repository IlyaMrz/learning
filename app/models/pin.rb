class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://image.prntscr.com/image/31438cfb81d64e8ca81b55352a6fdf80.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes, notice:"1111"
end
