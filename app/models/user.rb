class User < ApplicationRecord
  validates :account , presence: true , uniquness: {case_sensitive: false}
end
