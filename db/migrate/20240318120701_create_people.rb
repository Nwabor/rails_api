class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :given_last_name
      t.string :gender, null: false

      t.timestamps
    end
  end
end
