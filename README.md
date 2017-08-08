# HAATCoin 
## A smart contract made by kids, for kids.

What's good y'all. I'm Coyote, from Brooklyn. At the time of writing this, I am an intern at ConsenSys, the world's leading developer of DApps using the Ethereum blockchain.

In order to learn Solidity (the language that powers ethereum's smart contracts), I've created this project. At first, it was something that I did to pass time. Now, it's a project that I've become really passionate about, and I work on it all time.

# Origins

I think a good way for kids to get good grades is an incentive. Doing work sucks, doing homework sucks, everything about school sucks; but it's important to get good grades. And who doesn't like prizes? And it's not like they're getting nice things for doing nothing; they'll have to earn these rewards by putting in the maximum amount of effort.

This project comes from a desire to improve the education system in NYC. You see this system of incentivisation in schools in small towns and schools, but never in the NYCDOE.

# How It Works

The administration gives out the "High Academic Achievement Token", or HAATCoin based on how well you do in school.

The token creator, "owner", creates a set amount of tokens to be distributed. The first address belongs solely to the owner.

Every other address can be used by the administration to give to students. They'll input a name to call the address, as it's easier than typing a long, arbitrary address. Obviously, one name to one address.

You might be saying, what if two students have the same name? Well, that's why the mapping is so effective. The administration themselves set a name to an address. *Mike Smith might have 0xca... while another Mike Smith might have 0xr4...

* *At the moment this is still a problem. Yes, the administration can set a name to a unique address, however, the getAddress function returns the last initialized account. This has to be worked on...*

Once a name and an address are locked in, they never change. Only the Admin can change them.

Every address is tied to a name, and every gpa is tied to an address. These are all variables that can be called. Tokens will be distributed based on your gpa.


# Token Model

Multiple Coins: As your gpa increases, the more tokens you get.
-This would be the best option in the sense that you'd only be receiving a unified token, not a token with different values as your average increases (which was the original model but was too complicated imo.)

