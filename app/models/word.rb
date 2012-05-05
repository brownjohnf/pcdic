class Word < ActiveRecord::Base
  attr_accessible :language_id, :part_of_speech_id, :user_id

  belongs_to :user
  belongs_to :part_of_speech
  belongs_to :language

  has_many :word_histories

end
