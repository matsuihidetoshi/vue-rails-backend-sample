class CreateExaminees < ActiveRecord::Migration[5.1]
  def change
    create_table :examinees do |t|
      t.string :name
      t.float :time_1
      t.float :time_2
      t.float :time_3
      t.float :time_4
      t.float :time_5
      t.float :time_total
      t.integer :miss_1
      t.integer :miss_2
      t.integer :miss_3
      t.integer :miss_4
      t.integer :miss_5
      t.integer :miss_total
      t.float :ratio_1
      t.float :ratio_2
      t.float :ratio_3
      t.float :ratio_4
      t.float :ratio_5
      t.float :ratio_total

      t.timestamps
    end
  end
end
