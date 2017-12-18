class AddEmailToRemind < ActiveRecord::Migration[5.1]
  def change
    add_column :reminds, :email, :string
  end
end
