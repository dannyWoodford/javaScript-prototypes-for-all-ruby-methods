class AddUserIdAndVisualIdToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :user_id, :integer
    add_column :tracks, :visual_id, :integer
  end
end
