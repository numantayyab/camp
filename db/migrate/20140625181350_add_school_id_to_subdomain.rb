class AddSchoolIdToSubdomain < ActiveRecord::Migration
  def self.up
  add_column :sub_domains , :school_id , :integer
  end

  def self.down
    remove_column :sub_domains , :school_id
  end
end
