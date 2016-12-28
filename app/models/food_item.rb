class FoodItem < ApplicationRecord

  mount_uploader :image, FoodItemImageUploader

  def image_url_or_auto
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/brazil,rio/#{name}"
    end

  end


   def self.filter_by_section(section)
     where(section: section)
   end

  end
