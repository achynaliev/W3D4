# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  body        :string
#  poll_id     :integer
#  response_id :integer
#

class Question < ApplicationRecord
  validates :body, presence: true
  validates :poll_id, presence: true

  has_many :answer_choices,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: :AnswerChoice

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll
end
