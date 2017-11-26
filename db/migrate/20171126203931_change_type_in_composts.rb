class ChangeTypeInComposts < ActiveRecord::Migration[5.1]
  def change
    rename_column :composts, :type, :owner
  end
end
