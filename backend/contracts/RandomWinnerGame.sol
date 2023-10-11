// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/VRFConsumerBase.sol";

contract RandomWinnerGame is VRFConsumerBase, Ownable {

    // Chainlink variables-
    // The amount of key against which the random number will be generated
    uint256 public fee;

    // ID of public key against which the random number will be generated
    bytes32 public keyHash;

    // Address of players
    address[] public players;

    // Max number of players
    uint8 maxPlayers;

    // game started or not?
    bool public gameStarted;

    // game entry fee
    uint256 entryFee;

    // game id
    uint256 public gameId;

    // emitted when the game starts
    event GameStarted(uint256 gameId, uint8 maxPlayers, uint256 entryFee);

    // emitted when someone joins a game
    event PlayerJoined(uint256 gameId, address player);
    // emitted when the game ends
    event GameEnded(uint256 gameId, address winner);

    // make construct to set the initial values
    constructor(address vrfCoordinator, address linkToken, bytes32 vrfKeyHash, uint256 vrfFee) VRFConsumerBase()


}