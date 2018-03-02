# == Schema Information
#
# Table name: polls
#
#  id             :integer          not null, primary key
#  title          :string
#  poll_author_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Poll < ApplicationRecord

  validates :title, :poll_author_id, presence: true, uniqueness: true

  belongs_to :author,
    foreign_key: :poll_author_id,
    primary_key: :id,
    class_name: :User

  has_many :questions,
    foreign_key: :poll_id,
    primary_key: :id,
    class_name: :Question

end
