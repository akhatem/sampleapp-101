module UsersHelper

  # Returns the Image for the given user.
  def user_image(user)
    if user.image?
      image_tag user.image.url.to_s
    else
      image_url = "default-img.jpeg"
      image_tag(image_url , size: 100, alt: user.name, class: "gravatar")
    end
    #gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    #image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
