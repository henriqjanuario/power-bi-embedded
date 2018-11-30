module PowerBiEmbedded
  class Groups
    BASE_URL = "https://api.powerbi.com/v1.0/myorg/groups"

    def self.list(access_token: nil)
      PowerBiEmbedded::Base.get(BASE_URL, nil, { 'Authorization': "Bearer #{access_token}" })
    end

  end
end