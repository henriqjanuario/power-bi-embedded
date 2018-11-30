module PowerBiEmbedded
  class EmbedToken

    def initialize(access_token: nil, group_id: nil, resource: nil, resource_id: nil,
                   tile_id: nil, dataset_id: nil, access_level: nil, identities: nil, allow_save_as: false)
      @access_token  = access_token
      @group_id      = group_id
      @resource      = resource
      @resource_id   = resource_id
      @dataset_id    = dataset_id
      @access_level  = access_level
      @identities    = identities
      @allow_save_as = allow_save_as
      @accessLevel   = accessLevel
    end

    def call
      url = send(@resource) if @resource.present?

      PowerBiEmbedded::Base.post(url, build_body, build_headers)
    end

    private

    def report
      build_base_url + "/reports/#{@resource_id}/GenerateToken"
    end

    def dashboard
      build_base_url + "/dashboards/#{@resource_id}/GenerateToken"
    end

    def tile
      build_base_url + "/dashboards/#{@resource_id}/tiles/#{@tile_id}/GenerateToken"
    end

    def build_body
      {
        accessLevel: @access_level,
        allowSaveAs: @allow_save_as,
        datasetId: @dataset_id,
        identities: @identities
      }.compact
    end

    def build_headers
      { 'Authorization': "Bearer #{@access_token}" }
    end

    def build_base_url
      "https://api.powerbi.com/v1.0/myorg/groups/#{@group_id}"
    end

  end
end