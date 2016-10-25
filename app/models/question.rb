class Question < ActiveRecord::Base
  belongs_to :exercise
  has_many :alternatives

  accepts_nested_attributes_for :alternatives

  def correct_alternatives
    return alternatives.correct
  end

  def incorrect_alternatives
    return alternatives.incorrect
  end

#retornar pontos feitos apenas isso para attempt
end