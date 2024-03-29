class Person < ApplicationRecord
  #Association for Jobs relationship
  has_many :person_jobs, dependent: :destroy
  has_many :jobs, through: :person_jobs
  #Association for person relationship
  has_many :person_relationships_one, class_name: 'PersonRelationship', foreign_key: :person_one_id
  has_many :person_relationships_two, class_name: 'PersonRelationship', foreign_key: :person_two_id
  
    # relationships when using `_1.map(&attributes)`
  has_many :related_people_one,
             -> { select('people.*, person_relationships.role_two AS relationship')
                  .joins(:person_relationships_one).distinct },
             through: :person_relationships_one, source: :person_two
  has_many :related_people_two,
             -> { select('people.*, person_relationships.role_one AS relationship')
                  .joins(:person_relationships_two).distinct },
             through: :person_relationships_two, source: :person_one
  
    # use `.to_json` or `_1.map(&attributes)` to include the relationship!
  def related_people = (related_people_one + related_people_two).uniq

  def self.person_by(attributes)
    return unless attributes.is_a?(Hash)
    Person.joins(:person_relationships_two)
          .select('people.*, count(person_relationships.role_one) AS relationship_count')
          .where(**attributes)
          .first
  end
end