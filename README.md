This code repository is meant for a <a href="https://events.bizzabo.com/ma2017/agenda/session/206634">talk</a> at Magic Symposium 2017 in KL, Malaysia on 6th October. My main goal at this point is to explain how a blockchain works and its key concepts.

### How to run this code?

After you have done a `git clone [repo url]`, navigate to the `blockchain` folder, type `ruby blockchain_generator.rb`. You will see the output, i.e. blocks comprising the blockchain, in `storage.txt` file. 

### What is a blockchain?

A list of blocks (records) that are linked together using hashes, maintained as a distributed database.

**Distributed**: Copies of a blockchain stored on multiple computers (nodes) 

**Decentralised**: If one node updates all other nodes, the blockchain is *centralised*. If any node can update other nodes, it's *decentralised*. To do this securely, a way to reach consensus is needed, via *Proof-of-Work* or *Proof-of-Stake*.

**Proof-of-Work/Stake**: Algorithm by which nodes in a network achieve distributed consensus.

### What constitutes a block in the blockchain?

According to what I've built in this code repo, each block contains timestamp, data (generic), hash of previous block, index and its own hash.

### Mining a new block


### What is the role of hash in a block?

A "hash algorithm" is a one-way function that produces a fingerprint or "hash" that is arbitrarily-sized. This can be used to uniquely identify a block's contents. Also, given a block's hash contains the previous block's hash, the security of the block (and preceeding ones) are enhanced, all the way to the genesis block (i.e. first block).

### What's next?

I'll be developing this tutorial to build a decentralised, distributed blockchain that uses Proof-of-Work to achive consensus. 
What you have so far in this repo is a centralised blockchain - good enough to start separating hype from reality and doing a bunch of stuff, but I'm sure you'll want more once you get this far!






Gist vs Repo: I was considering using a gist, but <a href="https://stackoverflow.com/questions/43724011/gist-vs-repository-for-tutorial"> learned </a> that directories aren't supported, hence have placed the code here in a repo. You can clone it in a local env and run it with the command `ruby blockchain_generator.rb`. 
