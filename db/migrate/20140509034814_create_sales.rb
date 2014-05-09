class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :ammount
      t.string :company
      t.integer :salesrep_id

      t.timestamps
    end
  end
end
