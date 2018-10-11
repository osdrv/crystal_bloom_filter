# TODO: Write documentation for `BloomFilter`

require "./my_digest"

class BloomFilter

  alias ByteArray = Slice(UInt8)

  @bitset : Array(Bool)
  @k : UInt32
  @n : UInt32
  @m : UInt32
  @hashes : Array(Proc(Slice(UInt8), UInt64))

  def initialize(size : UInt32)
    @bitset, @k, @n, @m = Array(Bool).new, 0_u32, 0_u32, 0_u32
    @hashes = [
      ->MyDigest.fnv1_64(ByteArray),
      ->MyDigest.fnv1a_64(ByteArray),
      ->MyDigest.murmur3_64(ByteArray),
    ]
  end

  def add(el : ByteArray)
    puts el
    #TODO
    return
  end

  def test(el : ByteArray)
    #TODO
    return false
  end

end