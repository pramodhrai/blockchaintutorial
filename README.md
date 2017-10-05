This code repository is meant for a <a href="https://events.bizzabo.com/ma2017/agenda/session/206634">talk</a> at Magic Symposium 2017 in KL, Malaysia on 6th October. My main goal at this point is to explain how a blockchain works and its key concepts. 


### What is a blockchain?

A list of blocks (records) that are linked together using hashes, maintained as a distributed database.

**Distributed**: Copies of a blockchain stored on multiple computers (nodes) 

**Decentralised**: If one node updates all other nodes, the blockchain is *centralised*. If any node can update other nodes, it's *decentralised*. To do this securely, a way to reach consensus is needed, via *Proof-of-Work* or *Proof-of-Stake*.

**Proof-of-Work/Stake**: Algorithm by which nodes in a network achieve distributed consensus.

### What constitutes a block in the blockchain?

According to what I've built in this code repo, each block contains timestamp, data (generic), hash of previous block, index and its own hash. See `block.rb` for details.

### What is the role of hash in a block?

A "hash algorithm" is a one-way function that produces a fingerprint or "hash" that is arbitrarily-sized. This can be used to uniquely identify a block's contents. Also, given a block's hash contains the previous block's hash, the security of the block (and preceeding ones) are enhanced, all the way to the genesis block (i.e. first block).

### How is a block mined?

Check out `persist_block.rb` for how I do it, though it's primarily for illustration. 

In other blockchains - such as the Bitcoin, Ethereum, Coda, Hyperledger - nodes typically compete against one another to mine a block, using proof-of-work or proof-of-stake to achieve consensus on the winning block. 

### What kind of blockchains are there? 

A blockchain can be public, private, permissioned, permissionless, centralised, decentralised. 

All of these are configurations that can be set up based on the network's requirements. For example, an insurance company I know is protoyping a permissioned, private blockchain that involves just 3 entities - regulator, insurance firm, individual - for storing records about individuals' locations that will be accessible for payout in a natural disaster. Participation in this network requires permission and the blockchain is not exposed to the public.

### What's next?

I'll be developing this tutorial to build a decentralised, distributed blockchain that uses Proof-of-Work to achieve consensus. What you have so far in this repo is a centralised blockchain - good enough to start separating hype from reality in the news/amidst conversations and doing a bunch of stuff, but I'm planning on much more after getting this far.

In future, I will shift contents into a Wiki and use this README to just provide instructions on how to run the code.


### How to run this code?

You can clone it in a local env and run it with the command `ruby blockchain_generator.rb`. 

### Others

If you have thoughts, feedback - please feel free to reach out at pramodhdev2015@gmail.com
