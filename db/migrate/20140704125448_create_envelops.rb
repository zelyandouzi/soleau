class CreateEnvelops < ActiveRecord::Migration
  def change
    create_table :envelops do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
