//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HaiToken is ERC20, Ownable {

    /**
     * @dev Initialize the BitPlay total supply
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(address _to, uint256 _amount) ERC20("HaiPham Token", "HPT") {
        _mint(_to, _amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function burn(address _account, uint256 _amount) external onlyOwner {
        _burn(_account, _amount);
    }
}