class CatRentalRequest < ActiveRecord::Base

  STATUS =
    [ 'APPROVED',
      'DENY',
      'PENDING'
    ]

  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: STATUS, message: "Invalid status"}
  validate :overlapping_approve_requests

  belongs_to :cat,
  foreign_key: :cat_id,
  primary_key: :id,
  class_name: 'Cat'



  def overlapping_requests
    rentals = CatRentalRequest.where(cat_id: self.cat_id)
    rentals.where('? <= end_date AND ? >= start_date', self.start_date, self.end_date)
  end

  def overlapping_approve_requests
    overlapping_requests.where(status: 'APPROVED')
  end

end
