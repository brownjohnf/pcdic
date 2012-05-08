class Word < ActiveRecord::Base
  attr_accessible :user_id, :word_histories_attributes, :usages_attributes, :definitions_attributes, :master_tag_ids
  
  validates :user_id, :presence => true

  belongs_to :user

  has_many :word_histories, :dependent => :destroy
  has_many :usages, :dependent => :destroy
  has_many :definitions, :dependent => :destroy
  
  # word_a records in Relationship
  has_many :relationships, :foreign_key => 'word_a_id', :dependent => :destroy do
    def translations
      where("relationships.relationship_type_id = ? OR relationships.relationship_type_id = ?", RelationshipType.find_by_pictogram('<=>').id, RelationshipType.find_by_pictogram('=>').id)
    end
    def synonyms
      where("relationships.relationship_type_id = ?", RelationshipType.find_by_pictogram('==').id)
    end
  end

  # word_a => word_b
  has_many :children, :through => :relationships, :source => :word_b
  
  # word_a => word_b relationship types
  has_many :child_types, :through => :relationships, :source => :relationshp_type
  
  # word_b records in Relationship
  has_many :reverse_relationships, :foreign_key => 'word_b_id', :class_name => 'Relationship', :dependent => :destroy do
    def translations
      where("relationships.relationship_type_id = ?", RelationshipType.find_by_pictogram('<=>').id)
    end
  end

  # word_b => word_a
  has_many :parents, :through => :reverse_relationships, :source => :word_a
  
  # word_b => word_a relationship types
  has_many :parent_types, :through => :parent_relationships, :source => :relationship_type

  has_and_belongs_to_many :master_tags

  accepts_nested_attributes_for :word_histories, :reject_if => lambda { |a| a[:part_a].blank? }
  accepts_nested_attributes_for :usages, :reject_if => lambda { |a| a[:example].blank? }
  accepts_nested_attributes_for :definitions, :reject_if => lambda { |a| a[:content].blank? }

  # default_scope :order => 'current.part_a ASC'

  #scope :translations, includes(:relationships).where(:relationship_type_id => RelationshipType.find_by_pictogram('<=>').id)

  def translations
    relationships.translations
  end
  
  def rev_translations
    reverse_relationships.translations
  end

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
