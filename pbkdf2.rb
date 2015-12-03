require 'openssl'

def pbkdf2 password, salt, iterations = 100000 , derived_bytes = 20
  v = OpenSSL::PKCS5.pbkdf2_hmac_sha1 password, salt, iterations, derived_bytes
  [v].pack('m').strip
end
