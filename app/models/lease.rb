class Lease < ApplicationRecord
  belongs_to :tenant 
  belongs_to :apartment

  validates :rent, inclusion: { within: 1000..9000 }
end
