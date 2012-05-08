class Language < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :word_histories
  has_many :words, :through => :word_histories
  has_many :entries

end
