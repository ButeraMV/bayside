class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :desc
      t.boolean :flagship, default: false
      t.string :img_path

      t.timestamps
    end
  end
end
