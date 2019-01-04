class GifService
  def initialize(search)
    @search = search
  end

  def get_gif_data
    get_json("/v1/gifs/search?&q=#{@search}&limit=1&offset=0&rating=G&lang=en")
  end

  def get_url
    get_gif_data[:data][0][:url]
  end

  private

  def conn
    Faraday.new(url:"https://api.giphy.com") do |faraday|
      faraday.params["api_key"] = ENV['GIPHY_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
