class Destination < ApplicationRecord
    belongs_to :user
    has_many :plans
end
