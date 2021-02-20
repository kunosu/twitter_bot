require 'twitter'
require 'time'

require_relative './lib/Twitter.rb'

#----------------------------------------------------
# 定数
#----------------------------------------------------


#----------------------------------------------------
# ヘッダとフッター
#----------------------------------------------------

BEGIN {
	puts ""
	puts "#{__FILE__} start"
	puts ""
}

END {
	puts ""
	puts "end..."
}

#----------------------------------------------------
# main
#----------------------------------------------------

# ユーザー認証
twitter = Twitter.new

# ツイートする
#str = "@tos\r\ntest: #{Time.now}"
#puts str
#str = "@tos aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
#client.tweet(str)

