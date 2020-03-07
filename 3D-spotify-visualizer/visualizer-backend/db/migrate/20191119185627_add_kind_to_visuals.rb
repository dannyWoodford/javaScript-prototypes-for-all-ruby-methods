class AddKindToVisuals < ActiveRecord::Migration[6.0]
  def change
    add_column :visuals, :kind, :integer 
    add_column :visuals, :track_id, :integer 
  end
end
