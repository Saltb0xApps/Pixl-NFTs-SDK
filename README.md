# ``PixlNFTsSDK``

This is the Pixl Minting NFTs SDK. It provides iOS apps the ability to mint NFTs directly on the Polygon Blockchain, without having to integrate any smart contracts or solidity code.
An additional benefit of this SDK is that it does not require the source wallet address to pay gas fees or share its private key.

The SDK has two main functionalities -
1. Creating an NFT Smart Contract
2. Minting NFTs to Existing Smart Contracts.

You'll need a license key to initialise & use the SDK.

## Examples -

### Initialise Pixl SDK -
```
import PixlNFTsSDK

func initialisePixlSDK() {
    let pixlSDK = PixlNFTsSDK.init(license:"")
    pixlSDK.delegate = self
}
```

### Creating a smart contract -
```
import PixlNFTsSDK

func smartContract() {
    let pixlSDK = PixlNFTsSDK.init(license:"")
    pixlSDK.delegate = self
    pixlSDK.createSmartContract(ownerWalletAddress: "0x...", name: "NFT Smart Contract Name", symbol: "PXL")
}

func didCompleteNFTSmartContract(success: Bool, data: [String: Any], error: String?) {
    if success == true {
        print("\(data["contract_address"])")
    }
}
```

### Minting NFTs to a smart contract -
```
import PixlNFTsSDK

//Description of each parameter in the mintNFT function -
//1. destinationWalletAddress - The wallet address that will own the NFT
//2. contractAddress - any NFT smart contract created using the createSmartContract function
//3. nftName - title of the NFT
//4. nftDescription - description of the NFT
//5. nftImageURL - image_url for the NFT. Needs to be a remote image URL. PNG/JPG format.
//6. nftAttachmentURL - any attachment like mp3/3D file (GLTF/USDZ).
//7. nftExternalURL - external_url for an NFT. For example, "https://pixlapp.xyz"
//You can read more here - https://docs.opensea.io/docs/metadata-standards


func mintNFT() {
    let pixlSDK = PixlNFTsSDK.init(license:"")
    pixlSDK.delegate = self
    pixlSDK.mintNFT(destinationWalletAddress: "0x...", contractAddress:"0x...", nftName: "", nftDescription: "", nftImageURL: "", nftAttachmentURL: "", nftExternalURL: "")
}

func didCompleteNFTMint(success: Bool, data: [String: Any], error: String?) {
    if success == true {
        print("\(data["token_id"])/\(data["contract_address"])")
    }
}

```
