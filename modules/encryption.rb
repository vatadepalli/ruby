require "digest"

module Encryption
  private

  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end
