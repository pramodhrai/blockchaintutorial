require_relative "../models/block"
require 'json'

class PersistBlock
	LEDGER_LOCATION = 'storage.txt'.freeze

	def perform(next_block = nil)
		block = (next_block || generate_next_block).serialize
		f = File.open(LEDGER_LOCATION, 'a')
		f.write(block)
		f.write("\n")
		puts "new block created: #{block}"
		f.close
	end

	def create_first_block
		return unless File.read(LEDGER_LOCATION).empty?
		block = Block.new(previous_block_hash: '0', index: 0, data: 'First block is genesis block', timestamp: Time.now)
		perform(block)
	end

	private

	def last_persisted_block
		return if File.read(LEDGER_LOCATION).empty?
		last_line = File.readlines(LEDGER_LOCATION).last
		JSON.parse(last_line)
	end

	def generate_next_block
		previous_block = last_persisted_block
		next_block_index = previous_block['index'] + 1
		Block.new(
			previous_block_hash: previous_block['hash'], 
			index: next_block_index, 
			data: "I've been added, my index is #{next_block_index}", 
			timestamp: Time.now
		)
	end
end