class Image < ApplicationRecord
  def new(image_params)
    puts 'inside image new'
    puts image_params
    false
  end

  def is_valid_id
    return id > 5
  end
end
