class Artist < ApplicationRecord
  belongs_to :genre #=> ,optional: true | use this argument if you want to turn off automatic validation of a belongs_to relationship
  has_many :songs

  validates :name, presence: true, length: {minimum: 2}, uniqueness: true
  validates :genre_id, presence: true #=> make sure something is set in the field
  validates :genre, presence: true #=> make sure that the genre actually exist.
end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#
