class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :code, null: false, limit: 2
      t.timestamps null: false
    end
  end
end
