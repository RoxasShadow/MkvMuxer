MkvMuxer
========
Wrapper for [mkvmerge](`http://www.bunkus.org/videotools/mkvtoolnix/) to mux video, audio, subtitles, etc. in a Matroska container.

Install
-------
`gem install mkvmuxer`

Example
-------
*MkvMuxer* muxes:

- mkv (*required*, remember to put a `[CRC32]` tag in the file name, so it will be replaced by the final mkv's CRC32)
- ass (*required*)
- fonts (every *ttf*, *ttc* and *otf* it finds in folders whose name starts with *font*)
- chapters (stored in a *xml* file)

```ruby
require 'mkvmerge'

mkvmuxer = MkvMuxer.new './inari'
mkvmuxer.prepare
mkvmuxer.merge!
mkvmuxer.apply_crc32!
```

Or just use the built-in executable
```sh
$ mkvmuxer # show the usage
$ mkvmuxer './inari' # muxes all the files found in given folder
```