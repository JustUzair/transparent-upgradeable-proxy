// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {TransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {ProxyAdmin} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";
import {BoxV1} from "../src/BoxV1.sol";
// import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import "./HelperConfig.s.sol";

contract DeployBox is Script {
    HelperConfig config = new HelperConfig();

    function run() external returns (address, address) {
        (address proxy, address proxyAdmin) = deployBox();
        console.log("Proxy address", proxy);
        console.log("ProxyAdmin address", proxyAdmin);
        return (address(proxy), address(proxyAdmin));
    }

    function deployBox() public returns (address, address) {
        (uint256 deployerKey) = config.activeNetworkConfig();
        vm.startBroadcast(deployerKey);
        // vm.startBroadcast(address(proxyAdmin));
        ProxyAdmin proxyAdmin =
            new ProxyAdmin(deployerKey > 0 ? address(0xA72e562f24515C060F36A2DA07e0442899D39d2c) : address(this));
        BoxV1 box = new BoxV1();
        // ERC1967Proxy proxy = new ERC1967Proxy(address(box), "");

        TransparentUpgradeableProxy proxy = new TransparentUpgradeableProxy(address(box), address(proxyAdmin), "");
        BoxV1(address(proxy)).initialize();
        vm.stopBroadcast();
        return (address(proxy), address(proxyAdmin));
    }
}
