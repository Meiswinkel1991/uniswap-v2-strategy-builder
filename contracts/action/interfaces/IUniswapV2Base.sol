// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IAction} from "strategy-builder-plugin/contracts/interfaces/IAction.sol";
import {ITokenGetter} from "strategy-builder-plugin/contracts/interfaces/ITokenGetter.sol";

interface IUniswapV2Base is IAction, ITokenGetter {
    // ┏━━━━━━━━━━━━━━━━━━━━┓
    // ┃       Errors       ┃
    // ┗━━━━━━━━━━━━━━━━━━━━┛
    error FailedToApproveTokens();
    error PoolPairDoesNotExist();
    error NotZeroAmountForBothTokensAllowed();
    error NoValidPercentageAmount();
    error NoZeroAmountValid();
    error InvalidTokenGetterID();

    // ┏━━━━━━━━━━━━━━━━━━━━━━━━┓
    // ┃     View Functions     ┃
    // ┗━━━━━━━━━━━━━━━━━━━━━━━━┛

    function uniswapV2RouterAddress() external view returns (address);
}