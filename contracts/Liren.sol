pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LiRenContract is ERC1155, Ownable {
    uint256 public constant LiRenBoy = 0;
    uint256 public constant LiRenGirl = 1;

    mapping(uint256 => string) private _uri;

    constructor() ERC1155("") {
        _mint(msg.sender, LiRenBoy, 1, "");
        _mint(msg.sender, LiRenGirl, 2, "");
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }

    function burn(address account, uint256 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }

    function uri(uint256 tokenId) override public view returns (string memory) {
        return(_uri[tokenId]);
    }

    function setTokenUri(uint256 tokenId, string memory uri) public onlyOwner() {
        _uri[tokenId] = uri;
    }

}