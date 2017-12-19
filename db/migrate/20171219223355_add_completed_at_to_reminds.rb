class AddCompletedAtToReminds < ActiveRecord::Migration[5.1]
  def change
    add_column :reminds, :completed_at, :timestamp
  end
end
