class Word < ActiveRecord::Base
  attr_accessible :language_id, :part_of_speech_id, :user_id
end
