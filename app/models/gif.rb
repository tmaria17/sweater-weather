class Gif
  attr_reader :time, :summary, :url, :id
  def initialize(time, summary , url)
    @time = time
    @summary = summary
    @link = url
    @id = id
  end
end
