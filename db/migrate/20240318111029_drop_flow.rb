class DropFlow < ActiveRecord::Migration[7.1]
  def change
    drop_table :flows
  end
end
