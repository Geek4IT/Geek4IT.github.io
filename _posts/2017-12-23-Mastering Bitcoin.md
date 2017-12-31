---
date: 2017-12-23    23:00:00+00:00
layout: post
title: Mastering Bitcoin(R)
thread: 153
categories: Reading
tags:  Reading
---



<img src="https://images-cn.ssl-images-amazon.com/images/I/51ouTtTdgNL.jpg" width="200" />



2017-12-23 RATING:  9/10



[Mastering Bitcoin: Programming the Open Blockchain ](https://www.amazon.com/Mastering-Bitcoin-Programming-Open-Blockchain/dp/1491954388)



作者： [Andreas M. Antonopoulos ](https://www.amazon.com/Andreas-M.-Antonopoulos/e/B00MVAG8Z8/ref=dp_byline_cont_book_1)



### 一、思考

1、为什么可以无限制的创建钱包地址？是谁有权限创建的？

2、如果钱包地址还没有产生真正的比特币交易，那么还不是区块链上一个公开的地址，只是私有的。

3、发送比特币给另外一个地址，状态是“未确认”，这是因为这笔交易刚刚广播到网络中，但是尚未列入比特币的交易记录账本中，等待新的Block创建出来，并且验证交易有效才会真正记录“确认”到新的区块链中在。引起最终确认交易成功加到区块链上需要一定的时间，对于一些小额支付的场景，如买一杯咖啡，商家可以默认是一个有效的交易。

4、在比特币的世界里既没有账户，也没有余额，只有分散到区块链里的UTXO。

5、挖矿的目的不是创造新的比特币。 这是激励机制。 挖矿是一种机制，这种机制实现了去中心化的安全。挖矿的最重要的功能：支撑比特币安全的去中心化的共识机制。

6、中本聪的主要发明就是这种去中心化的自发共识（emergent consensus）机制。



### **二、书摘**



Bitcoin consists of:

- A decentralized peer-to-peer network (the bitcoin protocol)
- A public transaction ledger (the blockchain)
- A set of rules for independent transaction validation and currency issuance (consensus rules)
- A mechanism for reaching global decentralized consensus on the valid blockchain (Proof-of-Work algorithm)



Three basic questions for anyone accepting digital money are:

1. Can I trust that the money is authentic and not counterfeit?
2. Can I trust that the digital money can only be spent once (known as the “double-spend” problem)?
3. Can I be sure that no one else can claim this money belongs to them and not me?




View the [transaction from Joe to Alice](http://bit.ly/1tAeeGr).





![](/images/Mastering Bitcoin/Bitcoin Overview.png)

![](/images/Mastering Bitcoin/Transaction lifecycle.png)

![](/images/Mastering Bitcoin/Bitcoin Core architecture.png)

![](/images/Mastering Bitcoin/A chain of transactions.png)

![](/images/Mastering Bitcoin/Blockchain infographic.jpg)





PS:

"Bitcoin: A Peer-to-Peer Electronic Cash System," Satoshi Nakamoto (<https://bitcoin.org/bitcoin.pdf>).

- [Bitcoin Block Explorer](https://blockexplorer.com/)
- [BlockCypher Explorer](https://live.blockcypher.com/)
- [blockchain.info](https://blockchain.info/)
- [BitPay Insight](https://insight.bitpay.com/)

































