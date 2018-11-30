module PowerBiEmbedded
  class Reports

    def self.get(group_id: nil, report_id: nil, access_token: nil)
      url = "https://api.powerbi.com/v1.0/myorg/groups/#{group_id}/reports/#{report_id}"

      PowerBiEmbedded::Base.get(url, nil, { 'Authorization': "Bearer #{access_token}" })
    end

    def self.list(group_id: nil, access_token: nil)
      url = "https://api.powerbi.com/v1.0/myorg/groups/#{group_id}/reports"

      PowerBiEmbedded::Base.get(url, nil, { 'Authorization': "Bearer #{access_token}" })
    end

  end
end