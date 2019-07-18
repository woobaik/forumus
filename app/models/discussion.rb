class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  has_many :replies, dependent: :destroy

  validates :title, :body, presence: true
end
