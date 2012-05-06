class Word < ActiveRecord::Base
  attr_accessible :language_id, :part_of_speech_id, :user_id, :word_histories_attributes
  
  validates :user_id, :presence => true
  validates :language_id, :presence => true
  validates :part_of_speech_id, :presence => true

  belongs_to :user
  belongs_to :part_of_speech
  belongs_to :language

  has_many :word_histories

  accepts_nested_attributes_for :word_histories, :reject_if => lambda { |a| a[:part_a].blank? }

  # default_scope :order => 'current.part_a ASC'

  def current
    self.word_histories.first
  end

  def entry
    Entry.for(self)
  end

end
