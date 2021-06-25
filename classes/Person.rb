require_relative "../modules/Encryption"

class Person
  include Encryption

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def password=(password)
    @password = password
  end

  def encrypted_password
    encrypt(@password)
  end
end
