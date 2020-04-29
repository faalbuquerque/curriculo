class AddMoreDataToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :institution, :string
  end
end
