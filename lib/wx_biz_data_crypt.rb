require "wx_biz_data_crypt/version"
require "base64"
require "openssl"
require "json"
require "active_support/core_ext/object/blank"


module WxBizDataCrypt
  class Error < StandardError; end
  def self.decrypt(encoded_session_key, encoded_encrypted_data, encoded_iv)
    Base.new(nil, encoded_session_key).decrypt(encoded_encrypted_data, encoded_iv)
  end
  class Base
    def initialize(app_id, encoded_session_key)
      @app_id = app_id
      @session_key = Base64.decode64(encoded_session_key)
    end

    def decrypt(encoded_encrypted_data, encoded_iv)
      iv = Base64.decode64(encoded_iv)
      encrypted_data = Base64.decode64(encoded_encrypted_data)

      decipher = OpenSSL::Cipher::AES.new('128-CBC')
      decipher.key = @session_key
      decipher.iv = iv
      plain = decipher.update(encrypted_data) + decipher.final
      data = JSON.parse plain
      raise "Invalid value of #{data['watermark']['appid']} with @app_id :: WXBizDataCrypt" if @app_id.present? and data["watermark"]["appid"] != @app_id
      data
    end
  end
end
