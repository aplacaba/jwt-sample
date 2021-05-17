class JsonWebToken
  def self.encode(payload)
    expiration = 2.weeks.from_now.to_i
    JWT.encode(payload.merge(exp: expiration), self.secret_key_base)
  end

  def self.decode(token)
    JWT.decode(token, self.secret_key_base).first
  end

  private

  def self.secret_key_base
    Rails.application.credentials.fetch(:secret_key_base)
  end
end
