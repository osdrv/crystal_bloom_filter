require "./spec_helper"

describe BloomFilter do

  describe "test" do

    it "Should return true for an existing element" do
      bf = BloomFilter.new(1024)
      payload = "hello world".to_slice
      bf.add(payload)
      bf.test(payload).should be_true
    end

  end

end
