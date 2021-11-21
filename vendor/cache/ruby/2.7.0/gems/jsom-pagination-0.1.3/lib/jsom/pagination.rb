# frozen_string_literal: true

require 'jsom/pagination/version'
require 'jsom/pagination/pagy'

require 'jsom/pagination/page'
require 'jsom/pagination/meta_data'
require 'jsom/pagination/links'
require 'jsom/pagination/collection'
require 'jsom/pagination/paginator'

module JSOM
  module Pagination
    class Error < StandardError; end
  end
end
