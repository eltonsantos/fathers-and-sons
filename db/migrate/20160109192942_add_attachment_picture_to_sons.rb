class AddAttachmentPictureToSons < ActiveRecord::Migration
  def self.up
    change_table :sons do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :sons, :picture
  end
end
