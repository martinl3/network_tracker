class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :company
      t.string :name
      t.string :user_id

      t.timestamps

    end
  end
end
