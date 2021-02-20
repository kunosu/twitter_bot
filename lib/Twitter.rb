require 'twitter'

class Twitter
	attr_reader :client

	def initialize
		# アクセストークンが環境変数で設定済みか？
		nil_checker(ENV['CONSUMER_KEY'])
		nil_checker(ENV['CONSUMER_SECRET'])
		nil_checker(ENV['ACCESS_TOKEN'])
		nil_checker(ENV['ACCESS_TOKEN_SECRET'])

		@client = certify()
	end

	def nil_checker(obj)
		if obj.nil?
			raise ArgumentError, "nilです"
		end
	end

	# ユーザー認証
	def certify()
		ret = Twitter::REST::Client.new do |config|
			config.consumer_key = ENV['CONSUMER_KEY']
			config.consumer_secret = ENV['CONSUMER_SECRET']
			config.access_token = ENV['ACCESS_TOKEN']
			config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
		end

		return ret

	rescue Twitter::Error::BadReques => ex
		raise "認証に失敗しました"
	end

	def tweet(str)
		client.update(str)
		puts "#{str} をツイートしました"

		return true
	rescue Twitter::Error => ex
		puts "ツイートに失敗しました"
		puts "エラークラス: #{ex.class}"
		puts "エラーメッセージ: #{ex.message}"

		return false
	end
end
