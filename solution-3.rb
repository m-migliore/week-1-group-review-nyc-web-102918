require "pry"

class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end

class Photo
  attr_accessor :user, :comments, :message

  @@all = []

  def initialize
    @comments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def make_comment(message)
    comment = Comment.new
    comment.message = message
    self.comments << comment
  end
end

class Comment
  attr_accessor :message
  
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name

binding.pry


puts "end"
