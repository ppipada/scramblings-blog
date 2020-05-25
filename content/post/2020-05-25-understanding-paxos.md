---
title: Understanding Paxos
date: 2020-05-25 12:00:00 +0530
categories: [Distributed-systems]
tags: [distributed-systems]
type: post
summary: Reading the paxos made simple paper and understanding it.
seo:
  date_modified: 2020-05-25 12:00:00 +0530
---

Below are the steps recommended to read the `Paxos made simple` paper by `Leslie Lamport` and understand Paxos.

1. Read full paper.

   - [Paxos made simple](https://lamport.azurewebsites.net/pubs/paxos-simple.pdf)

   {{% admonition "quote" "The King. Alice in wonderland." %}}
   “Begin at the beginning,” the King said gravely,
   “and go on till you come to the end: then stop.”
   {{% /admonition %}}

2. Re-look at why is "leader election required". 2.5 -> 2.4 -> 2.3

3. Re-look the requirements for proposer P2c -> P2b -> P2a -> P2

4. Re-look the requirements for acceptor P1a -> P1

5. Go through the algorithm again. i.e Phase 1 and Phase 2.

6. Repeat 2-4 again. Do 1-4, if still not sure.
