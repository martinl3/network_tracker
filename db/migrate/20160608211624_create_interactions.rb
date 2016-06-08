class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :connection_id
      t.string :user_id
      t.string :notes
      t.date :date
      t.string :event

      t.timestamps

    end
  end
end
