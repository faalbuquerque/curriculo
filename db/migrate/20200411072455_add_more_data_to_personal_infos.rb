class AddMoreDataToPersonalInfos < ActiveRecord::Migration[6.0]
  def change
    add_column :personal_infos, :address, :string
    add_column :personal_infos, :fone, :string
    add_column :personal_infos, :social, :string
  end
end
