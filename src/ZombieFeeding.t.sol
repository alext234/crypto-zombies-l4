pragma solidity ^0.4.19;

import "ds-test/test.sol";

import "./ZombieFeeding.sol";

contract ZombieFeedingTest is DSTest, ZombieFactoryEvents {
	ZombieFeeding zombieFeeding;
    
	function setUp() public {
		zombieFeeding = new ZombieFeeding();
	}
    
	function test_feedAndMultiply() public {
		expectEventsExact(zombieFeeding);

		zombieFeeding.createRandomZombie("a");
		// check for event
		NewZombie(0, "a", zombieFeeding.getDnaByIndex(0));
 
		
		zombieFeeding.feedAndMultiply(0, 1, "kitty");
		uint dna1 = zombieFeeding.getDnaByIndex(1);
		// check for event
		NewZombie(1, "NoName", dna1);
		assertEq(dna1 % 100, 99);
		
		zombieFeeding.feedAndMultiply(0, 1, "nonKitty");        
		NewZombie(1, "NoName", zombieFeeding.getDnaByIndex(2));
    }
}
