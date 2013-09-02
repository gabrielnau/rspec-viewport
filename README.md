# RSpec::Viewport (wip)

Integration test helper for RSpec that nest examples in a given viewport
transparently. When working on a site that responds to multiple devices for
example, we find ourselves changing the viewport all the time, and adding
viewport description in the ExampleGroup title. This helper aim to DRY that
and to automatically nest a given examples block inside a viewport for a
clearer spec output.

## Usage

Given predefined viewports

  ```ruby
  RSpec.configure do |config|
    config.viewports { mobile: [200, 500], desktop: [1200, 1000] }
  end
  ```

When tests are defined inside a given viewport

  ```ruby
  describe "Site head" do

    viewport :mobile do
      scenario "when I clic on menu toggle, I see the full menu"
    end

    viewport :desktop do
      scenario "I see the full menu"
    end

  end
  ```

Then examples should be nested in an example group describing the viewport

  ```shell
  My feature
    On mobile
      when I clic on menu toggle, I see the full menu
    On desktop
      I see the full menu
  ```


## TODO

- find why ancestor chain is broken when dynamically nest example groups
- list drivers
- config

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-viewport'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-viewport

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
