class CreatePersonJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :person_jobs do |t|
      t.references :person, null: false, foreign_key: true, index: true
      t.references :job, null: false, foreign_key: true, index: true
      t.date :start_date , null: false
      t.date :end_date

      t.timestamps
    end
  end
end
