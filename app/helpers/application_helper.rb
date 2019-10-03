module ApplicationHelper
	 def gravatar_for(user, size: 25)
    gravatar_id = Digest::MD5::hexdigest('defaultemail@gmail.com'.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username)
  end
end
