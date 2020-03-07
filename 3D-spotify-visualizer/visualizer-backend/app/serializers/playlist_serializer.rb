class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :track_id, :integer, :visual_id, :integer
end
