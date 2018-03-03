pragma solidity ^0.4.19;

import "ds-test/test.sol";
import "./ZombieHelper.sol";


contract ZombieHelperTest is DSTest {
	ZombieHelper zombieHelper;
    
	function setUp() public {
		zombieHelper = new ZombieHelper();
	}

	function test_levelUp() public {
		zombieHelper.createRandomZombie("a");
		zombieHelper.levelUp.value(0.001 ether)(0);
		// TODO : need to get the actual level to verify?
	}	
	
	function testFail_levelUpWrongAmount() public {
		zombieHelper.createRandomZombie("a");
		
		// not the correct amount of ether sent 
		// so should throw
		zombieHelper.levelUp.value(0.002 ether)(0);
	}
}