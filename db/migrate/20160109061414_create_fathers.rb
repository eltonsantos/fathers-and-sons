class CreateFathers < ActiveRecord::Migration
  def change
    create_table :fathers do |t|
      t.string :name
      t.date :birth_date
      t.string :occupation

      t.timestamps null: false
    end
  end
end
