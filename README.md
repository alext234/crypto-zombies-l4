[![Build Status](https://travis-ci.org/alext234/crypto-zombies-l3.svg?branch=master)](https://travis-ci.org/alext234/crypto-zombies-l3)

# CryptoZombies, lesson 3

# Overview

This is from the tutorial at  https://share.cryptozombies.io/en/lesson/3/share/alext?id=Z2l0aHVifDE2MjQ1MjI=
 

In addition, unit tests and testnet-based tests have been added.

# Build 

To build and test, `dapp` is required, similar to this repository https://github.com/alext234/dapp-tutorial.

- Install `dapp.tools`:

```
curl https://nixos.org/nix/install > nix-install.sh
nix-env -iA dapphub.master.{dapp,seth,hevm,solc}

```
- Build

```
make all
```

# Tests

## Unit test

```
make test
```


### Testnet tests


On another terminal launch testnet with 2 accounts

```
dapp testnet --accounts=2
```

Now run the test script

```
./testnet_script.sh
```

