class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :user, foreign_key: true
    add_reference :messages, :lesson, foreign_key: true
    change_column :messages, :content, :text
  end
end
