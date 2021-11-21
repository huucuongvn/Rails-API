# frozen_string_literal: true

require 'json'

module JsonapiErrorsHandler
  # Serializes the given error to match the JSON:API specification
  #
  class ErrorSerializer
    def initialize(error)
      @error = error
    end

    def to_h
      serializable_hash
    end

    def to_json(_payload = nil)
      to_h.to_json
    end

    private

    def serializable_hash
      {
        errors: [error.serializable_hash].flatten
      }
    end

    attr_reader :error
  end
end
