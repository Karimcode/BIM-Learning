class Lesson < ApplicationRecord
has_many :participations, dependent: :destroy
  has_many :messages, dependent: :destroy

  belongs_to :teacher, class_name: "User", foreign_key: :user_id

end
