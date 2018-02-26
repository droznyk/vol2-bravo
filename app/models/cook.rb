class Cook < ApplicationRecord
  belongs_to :user
  has_many   :cooks_organizations
  has_many   :organizations, through: :cooks_organizations
  has_many   :proposals,     dependent: :destroy
  has_many   :dishes,        dependent: :destroy

  validates :speciality, :work_city, presence: true
end
