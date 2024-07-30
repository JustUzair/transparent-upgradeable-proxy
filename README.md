## Deployed Contracts:

### Network : Polygon Amoy

#### `ERC1967Proxy.sol` - [0x14453Dc5d6d10BC7c9D8b22Ac8814Ec14E73a00e](https://amoy.polygonscan.com/address/0x14453Dc5d6d10BC7c9D8b22Ac8814Ec14E73a00e)

#### `BoxV1.sol` - [0x40262a78b98bBb9b6415Fc854022A11DB2Ed7a2c](https://amoy.polygonscan.com/address/0x40262a78b98bBb9b6415Fc854022A11DB2Ed7a2c)

#### `BoxV2.sol` - [0x1D43f42FC8e07A88F020C6424af3773015Ca6692](https://amoy.polygonscan.com/address/0x1D43f42FC8e07A88F020C6424af3773015Ca6692)

## Deploying using scripts

### `DeployBox.s.sol`

```bash
forge script script/DeployBox.s.sol:DeployBox --rpc-url polygon_amoy --private-key $PRIVATE_KEY --verify
```

### `UpgradeBox.s.sol`

```bash
forge script script/UpgradeBox.s.sol:UpgradeBox --rpc-url polygon_amoy --private-key $PRIVATE_KEY --verify
```

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
