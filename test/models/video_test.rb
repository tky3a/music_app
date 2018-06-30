require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test "video save test" do
    video = Video.new({
      youtube_id: "w_3atGoniPM",
      artist_name: "yonige",
      music_name: "リボルバー"
      })
      assert video.save, 'Failed to save'
  end
end
