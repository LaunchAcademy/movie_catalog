class Movie < ActiveRecord::Base
  has_many :cast_members
  has_many :actors, through: :cast_members

  def self.search(query)
    where("title ILIKE ?", "%" + query + "%")
  end
end
