class User < ApplicationRecord
  has_one :points
  after_initialize :init

  def init
    self.number ||= 0
  end
end
