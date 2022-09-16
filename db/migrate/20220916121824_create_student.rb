class CreateStudent < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :category
      t.boolean :is_present
      t.integer :lecturer_id
    end
  end
end
