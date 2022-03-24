// SPDX-License-Identifier: MIT
pragma solidity >=0.8.1 <0.9.0;
/**
  @author Pedro Machado
  @title NFT LENA FOREVER
  @notice This smart contract NFT factory have been created to inmortalize Lena Photo. 
  this photo and the model is the most useful image in Image Processing for developer comunities. 
  @custom:address 0x4C5C315065720856e7aB87e15b383c5F761C6426

  **      ******   ****    **        ***
  **      **       **  *   **       *   *
  **      ******   **   *  **      *     *
  **      **       **    * **     * *  *  *
  ******  ******   **     ***    *         *

 */


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Lena is ERC721, Ownable {
  string private baseURI;

  constructor() ERC721("NFT LENA FOREVER", "LENA") {
    _setBaseURI("https://bafybeibqdh5s7jdn4kksbuymmcdsnksj6tyxykg5oz7i77gfx5bm6jzbuy.ipfs.nftstorage.link/metadata/");
    mintToOwner();
  }

  function mintToOwner() private returns(bool) {
    for (uint i = 1; i <= 3; i++) {
      _mint(owner(), i);
    }

    return true;
  } 

  function _setBaseURI(string memory _BaseURI) private {
    baseURI = _BaseURI;
  }

  function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
  }


}
