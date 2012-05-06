class WordHistory < ActiveRecord::Base
  attr_accessible :part_a, :part_b, :part_c, :part_d, :part_e, :part_f, :user_id, :word_id, :word_attributes

  validates :user_id, :presence => true
  #validates :word_id, :presence => true
  validates :part_a, :presence => true
  
  belongs_to :word
  belongs_to :user

  accepts_nested_attributes_for :word

  default_scope :order => 'created_at DESC'

end
