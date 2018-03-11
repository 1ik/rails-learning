class Subject < ApplicationRecord

  scope :visible, -> {
    where :visible => true
  }

  scope :invisible, -> {
    where :visible => false
  }

  scope :newest_first, -> {
    order 'created_at DESC'
  }

  scope :sorted, -> {
    order 'position ASC'
  }

  scope :search, -> (query) {
    where ["name LIKE ?", "%#{query}%"]
  }

end
