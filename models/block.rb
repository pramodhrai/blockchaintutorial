require "digest"

class Block
	def initialize(previous_block_hash:, index:, data:, timestamp:)
		@previous_block_hash = previous_block_hash
		@index = index
		@data = data
		@timestamp = timestamp.to_s
		@hash = current_block_hash
		#nonce = ? This is required for proof-of-work
	end

	def current_block_hash
		hashValue = Digest::SHA256.new
		hashValue.update @previous_block_hash.to_s + @index.to_s + @data.to_s + @timestamp.to_s
		hashValue.hexdigest
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