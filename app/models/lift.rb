class Lift < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, allow_blank: false
  validates :one_rep_max, presence: true, allow_blank: false

  # todo: round to nearest 5 for 1rm

end
