require 'decrypthash/hash'
module Decrypt_hashing
  def self.checking_error(value)
    #untill it get the value of hashes in the pattern that is given by the user
    unless value.respond_to?(:decrypt)
      #it will show the error if not found
      raise TypeError, "#{value.class.name} does not have #decrypt method"
    end
  end
end