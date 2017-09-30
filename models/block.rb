require "digest"

class Block
	def initialize(previous_block_hash:, index:, data:, timestamp:)
		@previous_block_hash = previous_block_hash
		@index = index
		@data = data
		@timestamp = timestamp.to_s
		@hash = current_block_hash
	end

	def current_block_hash
		encrypt = Digest::SHA256.new
		encrypt.update @previous_block_hash.to_s + @index.to_s + @data.to_s + @timestamp.to_s
		encrypt.hexdigest
	end 

	def serialize
		{
			index: @index, 
			data: @data,
			timestamp: @timestamp,
			previous_block_hash: @previous_block_hash,
			hash: @hash
		}.to_json
	end
end