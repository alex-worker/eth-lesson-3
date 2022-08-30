// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract GoldenCatTokenV3 is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, OwnableUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    // constructor() {
    //     _disableInitializers();
    // }

    // function initialize() initializer public {
    //     __ERC20_init("GoldenCatToken", "GCC");
    //     __Ownable_init();

    //     _mint(msg.sender, 1000000 * 10 ** decimals());
    // }

    uint256 public immutable finalTotalSupply = 1000000 * 10 ** decimals();
    function mint(address to, uint amount) external onlyOwner {
        uint256 amountDecimals = amount * 10 ** decimals();
        uint256 newSupply = totalSupply() + amountDecimals;
        require(newSupply <= finalTotalSupply, "Final supply reached!");
        _mint(to, amountDecimals);
    }
}
