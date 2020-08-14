class AddDateToLesson < ActiveRecord::Migration[5.2]
  def change
         add_column :lessons, :date, :date
  end
end
