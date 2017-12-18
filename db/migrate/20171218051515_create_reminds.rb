class CreateReminds < ActiveRecord::Migration[5.1]
  def change
    create_table :reminds do |t|
      t.string :title

      t.timestamps
    end
  end
end
