class Show < ActiveRecord::Base
end

def Show::highest_rating
  self.maximum(:rating)
end

def Show:::most_popular_show
  self.where("rating = ?", self.highest_rating).first
end

def Show::