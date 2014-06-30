# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  avatar          :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  validates :username, :presence => true, :length => { :minimum => 2, }
  has_secure_password
  has_many :games
  has_many :playlists
  has_many :questions, through: :games
end
