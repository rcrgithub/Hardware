class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
