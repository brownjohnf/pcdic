class Language < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :words
  has_many :entries

end
