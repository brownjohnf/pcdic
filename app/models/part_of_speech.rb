class PartOfSpeech < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :words

end
