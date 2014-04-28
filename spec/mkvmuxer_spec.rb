#! /usr/bin/env ruby
require 'mkvmuxer'

describe MkvMuxer do
  it 'muxes Stella Jogakuin\'s PV' do
    mkvmuxer = MkvMuxer.new './pv', true
    mkvmuxer.prepare
    mkvmuxer.merge!
    mkvmuxer.apply_crc32!

    videos = Dir['./pv/*.mkv']
    expect { videos.length.to be eql(2) }

    video = videos.reject { |v| v.include? 'CRC32' }.first
    crc32 = MkvMuxer.crc32_of video
    expect { video.split('.mkv').first.split('[').last.to_i.to be eql(crc32) }

    File.delete video
  end
end