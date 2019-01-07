class Gif
  attr_reader :time, :summary, :url, :id
  def initialize(time, summary , url)
    @time = time
    @summary = summary
    @url = url
    @id = id
  end

  def copyright
    Time.new.year.to_s
  end
end
