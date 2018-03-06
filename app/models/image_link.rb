class ImageLink < ActiveRecord::Base
  belongs_to :image
  belongs_to :fiction
end
