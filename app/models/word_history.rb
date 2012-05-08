class WordHistory < ActiveRecord::Base
  attr_accessible :part_a, :part_b, :part_c, :part_d, :part_e, :part_f, :user_id, :language_id, :part_of_speech_id, :word_id

  validates :user_id, :presence => true
  validates :language_id, :presence => true
  validates :part_a, :presence => true
  validates :part_of_speech_id, :presence => true
  
  belongs_to :word
  belongs_to :user
  belongs_to :part_of_speech
  belongs_to :language

  default_scope :order => 'created_at DESC'
  scope :alphabetical, :order =>  'part_b ASC'

  def parts
    [
      part_a,
      part_b,
      part_c,
      part_d,
      part_e,
      part_f
    ]
  end

  def first_format
    self.word.entry.first_form % self.parts
  end

  def second_format
    self.word.entry.second_form % self.parts
  end

  def third_format
    self.word.entry.third_form % self.parts
  end

end
