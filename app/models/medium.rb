class Medium < ApplicationRecord
  belongs_to :page

  has_attached_file :content

  do_not_validate_attachment_file_type :content
  
  def content_url
    content.url
  end
end
