class Lists < ActiveRecord::Migration[6.1]
  def change
    drop_table :lists
  end
end
