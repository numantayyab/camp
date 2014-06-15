class AddSchoolToTimeTable < ActiveRecord::Migration
  def self.up
    add_column :timetables ,:school_id , :integer , :null => false
  end

  def self.down
    remove_column :timetables ,:school_id
  end
end
