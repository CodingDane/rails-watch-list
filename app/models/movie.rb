class Movie < ApplicationRecord
  self.table_name = "wa_li_movies"
  has_many :bookmarks, foreign_key: "wa_li_movie_id"

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
