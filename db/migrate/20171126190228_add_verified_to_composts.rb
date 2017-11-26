class AddVerifiedToComposts < ActiveRecord::Migration[5.1]
  def change
    add_column :composts, :verified, :string
  end
end
