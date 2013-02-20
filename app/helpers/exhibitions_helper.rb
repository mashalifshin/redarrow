module ExhibitionsHelper

  def get_two_random_compact_images exhibition
    shuffled_images = exhibition.exhibition_images.shuffle
    [shuffled_images.first, shuffled_images.last]
  end

end