# rubocop:disable Style/Documentation
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_categories

  def set_categories
    @categories = Category.all
  end
end

# rubocop:enable Style/Documentation
