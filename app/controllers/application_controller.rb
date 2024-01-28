# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |name, password|
      name == 'a' && password == 'aaaaaa'
    end
  end
end
