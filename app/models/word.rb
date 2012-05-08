class Word < ActiveRecord::Base
  attr_accessible :user_id, :word_histories_attributes, :usages_attributes, :definitions_attributes, :master_tag_ids
  
  validates :user_id, :presence => true

  belongs_to :user

  has_many :word_histories, :dependent => :destroy
  has_many :usages, :dependent => :destroy
  has_many :definitions, :dependent => :destroy

  has_and_belongs_to_many :master_tags

  accepts_nested_attributes_for :word_histories, :reject_if => lambda { |a| a[:part_a].blank? }
  accepts_nested_attributes_for :usages, :reject_if => lambda { |a| a[:example].blank? }
  accepts_nested_attributes_for :definitions, :reject_if => lambda { |a| a[:content].blank? }

  # default_scope :order => 'current.part_a ASC'

  def current
    self.word_histories.first
  end
  
  def part_of_speech
    current.part_of_speech
  end

  def language
    current.language
  end

  def first_form
    current.first_format
  end

  def second_form
    current.second_format
  end

  def third_form
    current.third_format
  end

  def entry
    Entry.for(current)
  end

  def index
    current[entry.primary_part.to_sym]
  end

end
