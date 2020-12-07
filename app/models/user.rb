class User < ApplicationRecord
  has_many :countdowns, dependent: :destroy
end
