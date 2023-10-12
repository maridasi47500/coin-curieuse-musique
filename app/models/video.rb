class Video < ApplicationRecord
  belongs_to :tone, optional: true
  def yt?
  yt_regexp = /^(?:http:\/\/)?(?:www\.)?youtube\.com\/watch\?v=([a-zA-Z0-9_-]*)/
  yt_regexp.match(link)
  end
  def vimeo?
  vimeo_regexp = /^(?:http:\/\/)?(?:www\.)?vimeo\.com\/(\d+)/
  vimeo_regexp.match(link)
  end

end
