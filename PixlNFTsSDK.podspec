Pod::Spec.new do |s|  
    s.name              = 'PixlNFTsSDK'
    s.version           = '1.0.3'
    s.summary           = 'Mint NFTs & Create Smart Contracts on Polygon from any iOS app without any blockchain knowledge'
    s.homepage          = 'https://www.pixlapp.xyz'

    s.author            = { 'Akhil Tolani' => 'akhiltolani777@gmail.com' }
    s.license = { :type => "MIT", :text => "MIT License" }

    s.platform          = :ios
    s.source            = { :http => 'https://github.com/Saltb0xApps/Pixl-NFTs-SDK/tree/main/PixlNFTsSDK.xcframework' } 
    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = 'PixlNFTsSDK.xcframework'
end 