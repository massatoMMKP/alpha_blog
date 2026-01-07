module ApplicationHelper

  def gravatar_for(user, options = { size: 80 })
    # Assume you manually set the email_address here or get it from user input
    email_address = user.email.downcase
    
    
    hash = Digest::MD5.hexdigest(email_address)

    size = options[:size]

    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar", width: size, height: size, class: "rounded shadow mx-auto d-block")
  end
  
  


  
end
