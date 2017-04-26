//
//  Error.swift
// MyFood
//
//  Created by DaoNV on 3/7/16.
//  Copyright © 2016 AsianTech Inc. All rights reserved.
//

import Foundation
import SwiftUtils
import Alamofire
import Async

// MARK: - NetworkReachabilityManager
extension NetworkReachabilityManager {
    static let sharedInstance: NetworkReachabilityManager! = NetworkReachabilityManager()
}

class CFError {
    static let Network = NSError(domain: Strings.appName, status: HTTPStatus.requestTimeout)
    static let Authentication = NSError(domain: Strings.appName, status: HTTPStatus.unauthorized)
    static let JSON = NSError(domain: Strings.appName, code: 3840, message: "Can not parse json object")
    static let ApiKey = NSError(domain: Strings.appName, code: 120, message: "")

    static var isNetworkError: Bool {
        return NetworkReachabilityManager.sharedInstance.isReachable == false
    }
}
