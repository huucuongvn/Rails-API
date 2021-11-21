# frozen_string_literal: true

module JsonapiErrorsHandler
  # Allows to stringify keys on the given hash
  #
  class KeysStringifier
    def self.call(hash)
      hash.reduce({}) do |h, (k, v)|
        new_val = v.is_a?(Hash) ? call(v) : v
        h.merge(k.to_s => new_val)
      end
    end
  end
end
