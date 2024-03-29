class Job < ApplicationRecord
    has_many :person_jobs, dependent: :destroy
    has_many(:persons, through: :person_jobs)
    # has_many: persons,through: :person_jobs, class_name: 'Person', foreign_key: :people_id

end
