class CreateBeerfacts < ActiveRecord::Migration[5.1]
  def change
    create_table :beerfacts do |t|
      t.text :fact

      t.timestamps
    end
  end
end
