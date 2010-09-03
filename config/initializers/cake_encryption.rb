require "digest/sha1"

module Devise
  module Encryptors
    class CakeSha1 < Base
      def self.digest(password, stretches, salt, pepper)
        str = [pepper, password].flatten.compact.join
        Digest::SHA1.hexdigest(str)
      end
    end
  end
end