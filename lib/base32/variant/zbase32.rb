class Base32::Variant
  class ZBase32 < Base32::Variant
    def alphabet
      'ybndrfg8ejkmcpqxot1uwisza345h769'
    end

    def clean(asc_src)
      asc_src.downcase.tr("^#{self.alphabet}", '')
    end
  end
end
