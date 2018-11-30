# PowerBiEmbedded

Gem to consume Microsoft's PowerBiEmbedded RESTfull API.

The purpose of the methods is to generate tokens for the Power Bi Embedded JS LIB (https://github.com/Microsoft/PowerBI-JavaScript)

## Features
* Authenticate on Microsoft
* List Groups
* List and Get Dashboards
* List and Get Tiles
* List and Get Reports
* Embed Reports
* Embed Dashboards
* Embed Tiles

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'power_bi_embedded'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install power_bi_embedded


## Usage

### Authenticate

```ruby
PowerBiEmbedded::Authenticate.new(username: POWERBI_USERNAME,
                                  password: POWERBI_PASSWORD,
                                  refresh_token: REFRESH_TOKEN,
                                  client_id: CLIENT_ID,
                                  grant_type: GRANT_TYPE).call
```

### List Groups

```ruby
PowerBiEmbedded::Groups.list(access_token: AUTH_ACCESS_TOKEN)
```

### List Dashboards

```ruby
PowerBiEmbedded::Dashboards.list(group_id: GROUP_ID,
                                 access_token: AUTH_ACCESS_TOKEN)
```

### Get Dashboard

```ruby
PowerBiEmbedded::Dashboards.get(group_id: GROUP_ID,
                                dashboard_id: DASHBOARD_ID,
                                access_token: AUTH_ACCESS_TOKEN)
```

### List Tiles

```ruby
PowerBiEmbedded::Tiles.list(group_id: GROUP_ID,
                            dashboard_id: DASHBOARD_ID,
                            access_token: AUTH_ACCESS_TOKEN)
```

### Get Tile

```ruby
PowerBiEmbedded::Tiles.get(group_id: GROUP_ID,
                           dashboard_id: DASHBOARD_ID,
                           tile_id: TILE_ID,
                           access_token: AUTH_ACCESS_TOKEN)
```

### List Reports

```ruby
PowerBiEmbedded::Reports.list(group_id: GROUP_ID,
                             access_token: AUTH_ACCESS_TOKEN)
```

### Get Report

```ruby
PowerBiEmbedded::Reports.get(group_id: GROUP_ID,
                             report_id: REPORT_ID,
                             access_token: AUTH_ACCESS_TOKEN)
```

## Embed Resource
[DOC] (https://docs.microsoft.com/pt-br/rest/api/power-bi/embedtoken)

*OBS: "resource" can be "report", "dashboard" or "tile"*

```ruby
PowerBiEmbedded::EmbedToken.new(access_token: AUTH_ACCESS_TOKEN,
                                group_id: GROUP_ID,
                                resource: RESOURCE_NAME,
                                resource_id: RESOURCE_ID,
                                tile_id: TILE_ID,
                                dataset_id: DATASET_ID,
                                access_level: ACCESS_LEVEL,
                                identities: IDENTITIES,
                                allow_save_as: ALLOW_SAVE_AS).call
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/power_bi_embedded.
