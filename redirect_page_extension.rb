# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class RedirectPageExtension < Radiant::Extension

  def activate
    SiteController.send :include, PageRedirect::ControllerExtensions
    Page.class_eval do
      include RedirectPageTags
    end
  end

  def deactivate
  end

end
