class CreateMaTables < ActiveRecord::Migration[5.2]
  def change
    create_table :ma_tables do |t|
      t.string :name
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
