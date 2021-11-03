#!/usr/bin/env ruby
puts ARGV[0].scan(/[from:]{0}[A-Za-z0-9\+\-]+,[to:]{0}[A-Za-z0-9\+\-]+,[flags:]{0}[0,1\-:]+,/).join
