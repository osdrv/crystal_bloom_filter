# TODO: Write documentation for `BloomFilter`

require "./my_digest"

class BloomFilter
  @bitset : Array(Bool)
  @k : UInt32
  @n : UInt32
  @m : UInt32
  @hashes : Array(Proc(Slice(UInt8), UInt64))

  def initialize(size : UInt32)
    @bitset, @k, @n, @m = Array(Bool).new, 0_u32, 0_u32, 0_u32
    @hashes = [
      ->MyDigest.fnv1_64(Slice(UInt8)),
      ->MyDigest.fnv1a_64(Slice(UInt8)),
      ->MyDigest.murmur3(Slice(UInt8)),
    ]
  end

  def add(el : Slice(UInt8))
    puts el
    #TODO
    return
  end

  def test(el : Slice(UInt8))
    #TODO
    return false
  end

end