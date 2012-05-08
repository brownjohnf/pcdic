class MasterTag < ActiveRecord::Base
  attr_accessible :en, :fr

  validates :en, :presence => true

  has_and_belongs_to_many :words

  default_scope :order => 'en ASC'

end
