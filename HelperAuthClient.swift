//
//  HelperAuthClient.swift
//  sample-swift-SDKStarterWithOauth2
//


import Foundation
import UIKit

class HelperAuthClient {
    
    
    static var authPath: String = "https://accounts.artik.cloud/authorize?" +
        "client_id=\(Config.AppClientId)&" +
        "response_type=token&" +
        "redirect_uri=\(Config.AppRedirectUri)&" +
        "state=\(Config.AppState)"
    
    static func artikCloudLogin() {
        
        UIApplication.sharedApplication().openURL(NSURL(string: authPath)!)

    }
    
    static var credentials: [String: String] = [:]
    
}
