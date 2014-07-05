class UserHasManyEnvelops < ActiveRecord::Migration
  def change
  	add_column :envelops, :user_id, :integer
  end
end
