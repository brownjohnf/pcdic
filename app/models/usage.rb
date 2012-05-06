class Usage < ActiveRecord::Base
  attr_accessible :example, :priority, :word_id

  validates :example, :word_id, :presence => true

  belongs_to :word

  default_scope :order => 'priority ASC'

end
