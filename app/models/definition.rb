class Definition < ActiveRecord::Base
  attr_accessible :content, :priority, :word_id

  belongs_to :word

  default_scope :order => 'priority ASC'

end
