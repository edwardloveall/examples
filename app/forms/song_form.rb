class SongForm < Reform::Form
  model :song
  property :title

  collection :notes do
    property :title
  end
end
