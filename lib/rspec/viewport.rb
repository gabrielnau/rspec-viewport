require "rspec/viewport/version"

module RSpec
  module Viewport

    def resize(w, h)
      case d = page.driver
      when Capybara::Poltergeist::Driver
        d.resize(w, h)
      when Capybara::Selenium::Driver
        d.browser.manage.window.size = Size.new(w, h)
      end
    end

    def viewports(*args, &block)
      _viewports = args
      _viewports = [200, 500]
      _viewports.each do |v|
        describe "On #{viewport.to_s}" do
          resize _viewports[0], _viewports[1]
          yield v
        end
      end
    end

  end
end
