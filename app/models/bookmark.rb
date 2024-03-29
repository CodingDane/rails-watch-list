class Bookmark < ApplicationRecord
  self.table_name = "wa_li_bookmarks"
  belongs_to :movie, foreign_key: "wa_li_movie_id"
  belongs_to :list, foreign_key: "wa_li_list_id"

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :wa_li_list_id }
end
