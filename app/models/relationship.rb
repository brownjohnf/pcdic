class Relationship < ActiveRecord::Base
  attr_accessible :relationship_type_id, :user_id, :word_a_id, :word_b_id

  validates :relationship_type_id, :user_id, :word_a_id, :word_b_id, :presence => true

  belongs_to :relationship_type
  belongs_to :user
  belongs_to :word_a, :class_name => 'Word'
  belongs_to :word_b, :class_name => 'Word'

end
