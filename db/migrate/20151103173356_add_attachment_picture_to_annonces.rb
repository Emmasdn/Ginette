class AddAttachmentPictureToAnnonces < ActiveRecord::Migration
  def self.up
    change_table :annonces do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :annonces, :picture
  end
end
