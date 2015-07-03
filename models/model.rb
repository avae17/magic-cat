class Card
  def initialize(params)
    @cat=params[:catquestion]
    @background=params[:catbackground]
    @accessory=params[:cataccessory]
    @border=params[:catborder]
  end
  
  def img_code
    @cat="images/cats/#{@cat}"
    @background="images/backgrounds/#{@background}"
    @accessory="images/accessories/#{@accessory}"
    @border="images/borders/#{@border}"
  end
  
  def url_hash
    img_code
    card_hash={
      :cat => @cat,
      :background => @background,
      :accessory => @accessory,
      :border => @border
      }
    return card_hash
  end
end
