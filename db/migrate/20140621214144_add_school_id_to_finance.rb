class AddSchoolIdToFinance < ActiveRecord::Migration
  def self.up
    add_column :finance_transactions ,:school_id , :integer , :null => false
    add_column :finance_transaction_triggers ,:school_id , :integer , :null => false
  end

  def self.down
    remove_column :finance_transactions ,:school_id
    remove_column :finance_transaction_triggers ,:school_id
  end
end
