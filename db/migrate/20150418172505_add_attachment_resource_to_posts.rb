class AddAttachmentResourceToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :posts, :resource
  end
end
