class CreateSons < ActiveRecord::Migration
  def change
    create_table :sons do |t|
      t.string :name
      t.date :birth_date
      t.string :occupation
      t.references :father, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
