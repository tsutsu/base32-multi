require 'digest'
require 'base32'

module Digest
  module Instance
    def base32digest(variant_name = nil)
      Base32.encode32(self.digest, variant_name)
    end

    def base32digest!(variant_name = nil)
      Base32.encode32(self.digest!, variant_name)
    end
  end

  class Base
    def self.base32digest(str, variant_name = nil)
      Base32.encode32(self.digest(str), variant_name)
    end
  end
end
