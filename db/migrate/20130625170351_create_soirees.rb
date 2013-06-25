class CreateSoirees < ActiveRecord::Migration
  def change
    create_table :soirees do |t|
      t.string :titre

      t.timestamps
    end
  end
end
