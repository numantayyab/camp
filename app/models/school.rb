class School < ActiveRecord::Base
  has_one :sub_domain
  has_many :student_categories
  accepts_nested_attributes_for :sub_domain
end
