# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  correct    :boolean
#  created_at :datetime
#  updated_at :datetime
#  artist_id  :string(255)
#  genre_id   :string(255)
#  finish_at  :datetime
#

class Question < ActiveRecord::Base
  belongs_to :game
  has_one :song
end
