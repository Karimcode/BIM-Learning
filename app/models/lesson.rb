class Lesson < ApplicationRecord
has_many :participations, dependent: :destroy

belongs_to :user, foreign_key: :user_id

end
