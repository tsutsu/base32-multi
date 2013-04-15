class Base32::Variant
  class Crockford < Base32::Variant
    def alphabet
      '0123456789ABCDEFGHJKMNPQRSTVWXYZ'
    end

    def clean(ascstr)
      super(ascstr.tr('OIL', '011'))
    end
  end
end
