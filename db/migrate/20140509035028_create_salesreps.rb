class CreateSalesreps < ActiveRecord::Migration
  def change
    create_table :salesreps do |t|
      t.string :name
      t.string :lastname
      t.string :territory
      t.string :quota

      t.timestamps
    end
  end
end
