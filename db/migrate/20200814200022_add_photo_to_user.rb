class AddPhotoToUser < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :photo_user, :string
  end
end
