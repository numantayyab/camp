class School < ActiveRecord::Base
  has_one :sub_domain
  accepts_nested_attributes_for :sub_domain
end
