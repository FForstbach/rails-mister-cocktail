module CocktailsHelper

  def cards_photo?(cocktail)
    if cocktail.photo
      cl_image_path cocktail.photo, height: 500, width: 300, crop: :fill
    else
      image_tag("http://www.fillmurray.com/500/200")
    end
  end
end
