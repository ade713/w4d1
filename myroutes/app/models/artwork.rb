class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true
  validates :artist_id, uniqueness: { scope: :title }

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_one :shared_viewers,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artworkshare
end
