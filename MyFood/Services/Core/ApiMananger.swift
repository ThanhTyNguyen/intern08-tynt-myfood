//
//  ApiMananger.swift
// MyFood
//
//  Created by DaoNV on 3/7/16.
//  Copyright © 2016 AsianTech Inc. All rights reserved.
//

import Foundation
import Alamofire
import SwiftUtils
import Async

typealias JSObject = [String: Any]
typealias JSArray = [JSObject]
typealias Completion = (_ result: Result <JSObject>) -> Void

let api: ApiManager = ApiManager()

class ApiManager {

    var manager = Alamofire.SessionManager.default

    fileprivate init() {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        configuration.timeoutIntervalForResource = 30
        configuration.timeoutIntervalForRequest = 30
        manager = Alamofire.SessionManager(configuration: configuration)
        manager.delegate.taskWillPerformHTTPRedirection = { session, task, response, request in
           return request
        }
    }
}
