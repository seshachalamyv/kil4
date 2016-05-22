class CreateHis < ActiveRecord::Migration
  def change
    create_table :his do |t|
      t.string :b

      t.timestamps null: false
    end
  end
end
