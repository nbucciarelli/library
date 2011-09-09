class Book < ActiveRecord::Base
  GENRES = ['Horror', 'Romance', 'Sci-Fi', 'Fantasy']

  validates :title, :presence => true
end
