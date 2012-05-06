class Definition < ActiveRecord::Base
  attr_accessible :content, :priority, :word_id

  validates :content, :word_id, :presence => true

  belongs_to :word

  default_scope :order => 'priority ASC'

end
