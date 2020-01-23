class ResponseDatum < ApplicationRecord
    validates :uuid, presence: true
    validate :created_at, presence: true
end
