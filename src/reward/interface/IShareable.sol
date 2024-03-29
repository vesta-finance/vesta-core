// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IShareable {
    event ShareUpdated(address indexed user, uint256 share);
    event Flee();
    event Tack(address indexed src, address indexed dst, uint256 wad);

    function netAssetsPerShareWAD() external view returns (uint256);

    function getCropsOf(address _target) external view returns (uint256);

    function getShareOf(address owner) external view returns (uint256);
}
