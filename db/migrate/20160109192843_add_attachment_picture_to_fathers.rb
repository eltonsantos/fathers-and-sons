class AddAttachmentPictureToFathers < ActiveRecord::Migration
  def self.up
    change_table :fathers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :fathers, :picture
  end
end
