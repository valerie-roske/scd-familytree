class AddPledgeClassToPerson < ActiveRecord::Migration
  def change
    add_reference :people, :pledge_class, index: true
  end
end
