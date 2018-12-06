require 'jwt'

class Auth
  ALGORITHM = 'HS256'

  def self.encrypt(payload)
    JWT.encode(payload, secret_key, ALGORITHM)
  end

  def self.decode(token)
    JWT.decode(token, secret_key, true, { algorithm: ALGORITHM }).first
  end

  def self.secret_key
    '826328302572a42bdce2c3a7b0bfb4b21d3f851da995446df7f5bfba9c2becab77500be33eb21cb69f2f5a36ccbbb8273b7a3b21949ee3267d524bf0f9e1f230'
  end
end
