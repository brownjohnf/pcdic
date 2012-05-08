class RelationshipType < ActiveRecord::Base
  attr_accessible :description, :name, :pictogram

  has_many :relationships, :dependent => :destroy
  has_many :children, :through => :relationships, :source => :word_b
  has_many :parents, :through => :relationships, :source => :word_a

  def children_of(item)
    relationships.where(:word_a_id => item.id)
  end

  def parents_of(item)
    relationships.where(:word_b_id => item.id)
  end

end
