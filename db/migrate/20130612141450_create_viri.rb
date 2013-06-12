class CreateViri < ActiveRecord::Migration
  def change
    create_table :viri do |t|
      t.string :name

      t.timestamps
    end
  end
end
