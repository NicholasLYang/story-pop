class AddAttachmentContentToMedia < ActiveRecord::Migration[5.1]
  def self.up
    change_table :media do |t|
      t.attachment :content
    end
  end

  def self.down
    remove_attachment :media, :content
  end
end
