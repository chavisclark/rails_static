module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = url_options[:size]
    gravatar_url = "https://robohash.org/#{gravatar_id}?gravatar=yes?size=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end