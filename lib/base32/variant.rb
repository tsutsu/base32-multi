module Base32
  class Variant
    def alphabet
      Base32::ALPHABET
    end

    def wrap(asc_src)
      asc_src.tr(Base32::ALPHABET, self.alphabet)
    end

    def unwrap(asc_src)
      asc_src.tr(self.alphabet, Base32::ALPHABET)
    end

    def clean(asc_src)
      asc_src.upcase.tr("^#{self.alphabet}", '')
    end


    def self.shortname
      self.name.split('::').last.downcase.intern
    end

    def self.[](variant_name)
      @variants ||= {}

      @variants[variant_name] ||= (
        require "base32/variant/#{variant_name}"
        self.constants.map{ |k| self.const_get(k) }.find{ |k| k.shortname == variant_name }.new
      )
    end
  end
end
