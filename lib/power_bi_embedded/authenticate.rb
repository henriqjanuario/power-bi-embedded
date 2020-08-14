module PowerBiEmbedded
  class Authenticate

    BASE_URL   = "https://login.windows.net/common/oauth2/token"
    RESOURCE   = "https://analysis.windows.net/powerbi/api"

    def initialize(username: nil, password: nil, refresh_token: nil, client_id: nil, client_secret: nil, grant_type: nil)
      @username      = username
      @password      = password
      @refresh_token = refresh_token
      @client_id     = client_id
      @client_secret = client_secret
      @grant_type    = grant_type
    end

    def call
      PowerBiEmbedded::Base.post(BASE_URL, build_body, build_headers)
    end

    private

    def build_body
      {
        client_id: @client_id,
        client_secret: @client_secret,
        grant_type: @grant_type,
        resource: RESOURCE,
        username: @username,
        password: @password,
        refresh_token: @refresh_token
      }.compact
    end

    def build_headers
      { 'Content-Type': 'application/x-www-form-urlencoded'}
    end

  end
end