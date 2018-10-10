module MyDigest

  extend self

  def fnv1_64(key : Slice(UInt8))
    s = 14695981039346656037
    key.each do |byte|
      s *= 1099511628211
      s ^= UInt64.new(byte)
    end
    return s
  end
  
  def fnv1a_64(key : Slice(UInt8))
    s = 14695981039346656037
    key.each do |byte|
      s ^= UInt64.new(byte)
      s *= 1099511628211
    end
    return s
  end
  
  def murmur3(key : Slice(UInt8))
    return 0_u64
  end
end