import Foundation


class SipService: NSObject {
    let sdk: PortSIPSDK
    
    override init() {
        self.sdk = PortSIPSDK()
    }
}
