module PowerBiEmbedded
  class Tiles

    def self.get(group_id: nil, dashboard_id: nil, tile_id: nil, access_token: nil)
      url = "https://api.powerbi.com/v1.0/myorg/groups/#{group_id}/dashboards/#{dashboard_id}/tiles/#{tile_id}"

      PowerBiEmbedded::Base.get(url, nil, { 'Authorization': "Bearer #{access_token}" })
    end

    def self.list(group_id: nil, dashboard_id: nil, access_token: nil)
      url = "https://api.powerbi.com/v1.0/myorg/groups/#{group_id}/dashboards/#{dashboard_id}/tiles"

      PowerBiEmbedded::Base.get(url, nil, { 'Authorization': "Bearer #{access_token}" })
    end

  end
end