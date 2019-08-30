class Show < ActiveRecord::Base
end

def self.highest_rating
  self.maximum(:rating)
end

def self.lowest_rating
  self.minimum(:rating)
end

def self.most_popular_show
  self.where(rating: :desc).first
end

def self.least_popular_show
  self.where(rating: :asc).first
end

def self.ratings_sum
  self.sum(:rating)
end

def self.popular_shows
   self.where("rating > ?", 5)

 end
def self.shows_by_alphabetical_order
  self.order(:name)
end
