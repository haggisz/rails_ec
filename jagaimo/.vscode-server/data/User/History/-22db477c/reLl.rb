# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application'
pin_all_from 'app/javaScript/controllers', under: 'controllers', to: 'controllers'
pin '@hotwired/turbo-rails', to: '@hotwired--turbo-rails.js' # @8.0.0
pin '@hotwired/turbo', to: '@hotwired--turbo.js' # @8.0.0
pin '@rails/actioncable/src', to: '@rails--actioncable--src.js' # @7.1.3
pin '@hotwired/turbo-rails', to: "turbo.min.js", preload: true
pin 'jquery' # @3.7.1
pin '@rails/request.js', to: @rails--request.js.js' # @0.0.9
