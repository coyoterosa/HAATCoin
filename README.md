# HAATCoin 
## A smart contract made by kids, for kids.

What's good y'all. I'm Coyote, from Brooklyn. At the time of writing this, I am an intern at ConsenSys, the world's leading developer of
DApps using the Etereum blockchain.

In order to learn Solidity(the language that powers ethereum's smart contracts), I've created this project. At first it was something that
I did to pass time. Now, it's a project that I've become really passionate about, and I work on it all time.

# HOW IT WORKS

The token creator, "owner", creates a set amount of tokens to be
distributed. The first address belongs solely to the owner.

Every other address can be used by the administration to give to students.
We input a name to call the address, as it's easier than typing a long,
arbitrary address. Obviously, one name to one address.

You might be saying, what if two students have the same name? Well, that's why
the mapping is so effective. The administration themselves set a name to an
address. Mike Smith might have 0xca... while another Mike Smith might have 0xr4...
Once a name and an address and locked in, no one can change them. I mean you can,
but you shouldn't.

Every address is tied to a name, and every gpa is ties to an address. These are all variables
that can be called.

The administration gives out the "High Academic Achievement Token", or HAATCoin based on how well you
do in school.

# TOKEN MODEL

Multiple Coins: As your gpa increases, the more tokens you get.
-This would be the best option in the sense that you'd only be receiving a unified token,
not a token with different values as your average increases (which was the original model, but was too complicated
in my own opinion.)
