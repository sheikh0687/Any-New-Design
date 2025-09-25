

import UIKit

let NETWORK_ERROR_MSG : String  =  "No Internet Connection. Make sure your device is connected to the internet."

class InternetUtilClass{
    
    class var sharedInstance: InternetUtilClass {
        
        struct Static {
            
            static let instance: InternetUtilClass = InternetUtilClass()
            static var reachability: Reachability? = Reachability.forInternetConnection()
        }
        
        return Static.instance
    }
    
    func hasConnectivity() -> Bool {
        let reachability: Reachability = Reachability.forInternetConnection()
        let networkStatus: Int = reachability.currentReachabilityStatus().rawValue
        return networkStatus != 0
    }
    
    
}
