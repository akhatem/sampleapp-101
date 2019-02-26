module UsersHelper
  def gravatar_for(user, size: "70x80")
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #gravatar_url = "profileImg.jpeg"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
