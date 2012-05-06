class Entry < ActiveRecord::Base
  attr_accessible :comments, :language_id, :part_a, :part_b, :part_c, :part_d, :part_e, :part_f, :part_of_speech_id, :primary_part, :first_form, :second_form, :third_form

  validates :part_a, :primary_part, :first_form, :second_form, :third_form, :presence => true

  before_validation :clear_empty_attrs

  belongs_to :language
  belongs_to :part_of_speech

  def self.for(item)
    where("language_id = :lang_id AND part_of_speech_id = :pos_id", { :lang_id => item.language_id, :pos_id => item.part_of_speech_id }).limit(1).first
  end

  def clear_empty_attrs
    @attributes.each do |key,value|
      self[key] = nil if value.blank?
    end
 end

end
