require 'action_view' 

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  
  CAT_COLORS_SET = %w(black tiger brown white)

  validates :color, inclusion: CAT_COLORS_SET
  validates :sex, inclusion: %w(M F m f)
  validates :birth_date, :color, :name, :sex, presence: true

  def age
    time_ago_in_words(birth_date)
  end 

end


