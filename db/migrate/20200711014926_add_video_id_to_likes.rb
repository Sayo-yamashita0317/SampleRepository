class AddVideoIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :video_id, :integer
  end
end
