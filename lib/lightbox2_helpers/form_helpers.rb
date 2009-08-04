# Various helpers available for use in your view
module Lightbox2Helpers::FormHelpers

  # Similar to link_to, but tweaked so it uses lightbox2
  #
  # == Signatures
  #
  #   link_to_lightbox2(name, options = {}, html_options = nil)
  #   link_to_libhgbox2(options = {}, html_options = nil) do
  #     # name
  #   end
  #
  # == Options
  # link_to_lightbox uses link_to internally, so it should accept all parameters accepted by link_to. Plus two new ones. 
  #
  # === :title
  # Used as a caption on the picture's image. Can be left blank.
  #
  #   <%= link_to_lightbox2 "Show the picture", "/images/picture.jpg", :title => "a nice picture" %>
  #
  # === :group
  # It will be possible to iterate over links of the same "group" (with "next", "previous" links)
  #
  #   <%= link_to_lightbox2 :group => "avatars" do %>
  #     This is also part of the link <%= image_tag "picture.jpg">
  #   <% end %> 
  #
  # == Warning about html_options :rel
  # * link_to_lightbox2 will override :rel if you use it as a parameter on html_options.
  def link_to_lightbox2(*args, &block)
    if block_given?
      options      = args.first || {}
      html_options = args.second || {}
    else
      name         = args.first
      options      = args.second || {}
      html_options = args.third || {}
    end
    
    if options[:group]
      html_options.merge!( {:rel => "lightbox[#{options[:group]}]"} )
    else
      html_options.merge!( {:rel => "lightbox"} )
    end
    
    html_options.merge!( {:title => options[:title]} ) if options[:title]
    
    if block_given?
      return concat(link_to(capture(&block), options, html_options))
    else
      return link_to (name, options, html_options)
    end
  end

end
