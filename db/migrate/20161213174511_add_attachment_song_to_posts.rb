class AddAttachmentSongToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :song
    end
  end

  def self.down
    remove_attachment :posts, :song
  end
end
