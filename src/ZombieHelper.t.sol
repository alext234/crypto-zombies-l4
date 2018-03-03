pragma solidity ^0.4.19;

import "ds-test/test.sol";
import "./ZombieHelper.sol";


contract ZombieHelperTest is DSTest {
	ZombieHelper zombieHelper;
    
	function setUp() public {
		zombieHelper = new ZombieHelper();
	}
	
}