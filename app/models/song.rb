class Song < ActiveRecord::Base
  has_many :notes
end
