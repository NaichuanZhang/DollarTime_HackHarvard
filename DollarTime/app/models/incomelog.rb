class Incomelog < ApplicationRecord
  belongs_to :user, optional: true
end
