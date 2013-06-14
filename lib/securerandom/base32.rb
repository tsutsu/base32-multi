require 'base32'
require 'securerandom'

module SecureRandom
  module_function

  def base32(num_bytes = nil, variant_name = :plain)
    Base32.encode32(self.random_bytes(num_bytes), variant_name)
  end

  # 160 bits rather than 128, to ensure a constant number of pentets (32)
  def base32_uuid(variant_name = :plain)
    Base32.encode32(self.random_bytes(20), variant_name)
  end
end
