class GifSerializer
  include FastJsonapi::ObjectSerializer
  attributes :time, :summary, :url
end
