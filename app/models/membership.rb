class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :archaeological_project
end
