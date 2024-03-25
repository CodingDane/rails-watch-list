class List < ApplicationRecord
  self.table_name = "wa_li_lists"
  has_many :bookmarks, dependent: :destroy, foreign_key: "wa_li_list_id"
  has_many :movies, through: :bookmarks, foreign_key: "wa_li_list_id"
  belongs_to :user, foreign_key: "wa_li_user_id"

  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
