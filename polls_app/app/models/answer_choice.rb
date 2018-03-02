# == Schema Information
#
# Table name: answer_choices
#
#  id            :integer          not null, primary key
#  answer_choice :string
#  question_id   :integer
#

class AnswerChoice < ApplicationRecord
  validates :question_id, presence: true

  belongs_to :question,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: :Question

  has_many :reponses,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: :Response
end
