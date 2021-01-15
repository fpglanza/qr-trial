class User < ApplicationRecord
  attr_reader :username, :points, :email
  has_one :points

  def username
    @username
  end

  def points
    @points
  end

  def email
    @email
  end
end
