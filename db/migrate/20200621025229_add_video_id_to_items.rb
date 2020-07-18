class AddVideoIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :video_id, :integer
  end
end
