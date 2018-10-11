module MyDigest

  FNV_OFFSET_64 = 14695981039346656037_u64
  FNV_PRIME_64 = 1099511628211_u64

  extend self

  def fnv1_64(key : Slice(UInt8))
    s = FNV_OFFSET_64
    key.each do |byte|
      s *= FNV_PRIME_64
      s ^= UInt64.new(byte)
    end
    return s
  end
  
  def fnv1a_64(key : Slice(UInt8))
    s = FNV_OFFSET_64
    key.each do |byte|
      s ^= UInt64.new(byte)
      s *= FNV_PRIME_64
    end
    return s
  end
  
  def murmur3_64(key : Slice(UInt8))
    return 0_u64
  end

  module HighwayHash

    NUM_LANES = 4
    PACKET_SIZE = 8 * NUM_LANES

    alias Lanes = Array(UInt64)

    extend self

    @init0 = [0xdbe6d5d5fe4cce2f_u64, 0xdbe6d5d5fe4cce2f_u64, 0x13198a2e03707344_u64, 0x243f6a8885a308d3_u64]
    @init1 = [0x3bd39e10cb0ef593_u64, 0xc0acf169b5f18a8c_u64, 0xbe5466cf34e90c6c_u64, 0x452821e638d01377_u64]

  end
end