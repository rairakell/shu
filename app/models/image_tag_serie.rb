class ImageTagSerie < ActiveRecord::Base
  belongs_to :image_tag
  belongs_to :image_serie
end
