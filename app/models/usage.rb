class Usage < ActiveRecord::Base
  attr_accessible :example, :priority, :word_id

  belongs_to :word

  default_scope :order => 'priority ASC'

end
