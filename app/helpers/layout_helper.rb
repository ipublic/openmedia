# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
# helper :layout

module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title, page_title.to_s)
  end
   
   
  def nav_tab(title, url, options = {})
    current_tab = options.delete(:current)
    options[:class] = (current_tab == title) ? 'active' : 'inactive'
    content_tag(:li, link_to(title, url, options))
  end
  
  def currently_at(tab)
    render partial: 'layouts/main_nav', locals: {current_tab: tab}
  end
     
end