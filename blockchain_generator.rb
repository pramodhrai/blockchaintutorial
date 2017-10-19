require_relative "services/persist_block"

total_blocks_to_add = 5

persist_block_service = PersistBlock.new
persist_block_service.create_first_block

for i in 0..total_blocks_to_add
	persist_block_service.perform
end