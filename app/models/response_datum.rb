class ResponseDatum < ApplicationRecord
    validates :uuid, presence: true
    validates :created_at, presence: true
end
