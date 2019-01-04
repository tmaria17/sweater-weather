class Gif
  attr_reader :time, :summary, :url
  def initialize(time, summary , url)
    @time = time
    @summary = summary
    @link = url
  end
end
