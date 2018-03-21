class Subject < ApplicationRecord
  has_many :pages

  scope :visible, -> {
    where :visible => true
  }

  scope :invisible, -> {
    where :visible => false
  }

  scope :newest_first, -> {
    order 'created_at DESC'
  }

  scope :sorted, -> (column) {
    order "#{column} ASC"
  }

  scope :search, -> (query) {
    where ["name LIKE ?", "%#{query}%"]
  }

end
