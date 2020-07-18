class AddVideoToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :video, :string
  end
end
