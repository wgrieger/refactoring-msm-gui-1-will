# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    #we have the @director and need .filmography 

    id= self.id
    matching_movies = Movie.where({ :director_id => id })

    return matching_movies

  end
end
