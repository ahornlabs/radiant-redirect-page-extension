module PageRedirect::ControllerExtensions
  def self.included(base)
    base.class_eval { before_filter :apply_page_redirects }
  end

  def apply_page_redirects
    url = params[:url]
    if Array === url
      url = url.join('/')
    else
      url = url.to_s
    end
    a_match = params[:locale].blank? ? Page.find_by_path(url, live?) : Page.find_by_path("#{params[:locale].to_s}/#{url}", live?)
    if a_match && a_match.is_a?(RedirectPage)
      if redirect_url = a_match.redirect_url
        location = redirect_url.match('http://') || redirect_url.match('https://')  ? redirect_url : url_for(:controller => 'site', :action => 'show_page', :url => redirect_url)
        redirect_to CGI.unescape(location), :status => '307 Temporarily Moved' and return
      end
    end
  end

end
