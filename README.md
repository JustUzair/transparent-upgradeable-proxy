## Deployed Contracts:

### Network : Polygon Amoy

#### `TrasnparentUpgradeableProxy.sol` - [`0x7EcEb12Ce99A1E585cc0AB408da4d76197Ca7639`](https://amoy.polygonscan.com/address/0x7EcEb12Ce99A1E585cc0AB408da4d76197Ca7639)

#### `BoxV1.sol` - [`0x71D04FA21D3291533d353767F1d369b76cA0972b`](https://amoy.polygonscan.com/address/0x71D04FA21D3291533d353767F1d369b76cA0972b)

#### `BoxV2.sol` - [`0xEA2b7604d80F5473692925d6f23721ae1195D598`](https://amoy.polygonscan.com/address/0xEA2b7604d80F5473692925d6f23721ae1195D598)

#### `ProxyAdmin` - [`0x5a58175bd417775eF4A19192fa9994A9872aba60`](https://amoy.polygonscan.com/address/0x5a58175bd417775eF4A19192fa9994A9872aba60)

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
