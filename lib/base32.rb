require 'base32/base32'
require 'base32/variant'

module Base32
  ALPHABET = '0123456789ABCDEFGHIJKLMNOPQRSTUV'

  module_function

  def encode32(binstr, variant_name = :plain)
    Variant[variant_name].wrap(self.b2a(binstr))
  end

  def decode32(ascstr, variant_name = :plain)
    variant = Variant[variant_name]
    cleanascstr = variant.clean(ascstr)

    if cleanascstr.length == 0 && ascstr.length != 0
      raise ArgumentError, "invalid Base32 sequence"
    end

    self.a2b(variant.unwrap(cleanascstr))
  end
end
