class Show < ActiveRecord::Base
end

def self::highest_rating
  self.maximum(:rating)
end

def self::lowest_rating
  self.minimum(:rating)

def self::most_popular_show
  self.where("rating = ?", self.highest_rating).first
end

def self::least_popular_show
  self where("rating = ?", self.lowest_rating).first
end