module Base32
  # native-ruby encoding/decoding implementation
  # probably could be a lot faster!

  module_function

  def b2a(binstr)
    n_pentets = ((binstr.length * 8) + 4) / 5
    bigint = binstr.bytes.inject(0){ |i,octet| (i << 8) | octet }
    bigint.to_s(32).rjust(n_pentets, '0').upcase
  end

  def a2b(ascstr)
    n_octets = (ascstr.length * 5) / 8
    bigint = ascstr.to_i(32)
    octet_arr = Array.new(n_octets)

    while n_octets > 0
      octet_arr[n_octets - 1] = bigint & 0b11111111
      bigint >>= 8
      n_octets -= 1
    end

    octet_arr.pack('C*')
  end
end
