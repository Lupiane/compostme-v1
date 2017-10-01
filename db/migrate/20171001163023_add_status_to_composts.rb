class AddStatusToComposts < ActiveRecord::Migration[5.1]
  def change
    add_column :composts, :status, :string, default: :active
  end
end
