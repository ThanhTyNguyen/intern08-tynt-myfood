//
//  RequestSerializer.swift
// MyFood
//
//  Created by DaoNV on 7/8/16.
//  Copyright © 2016 AsianTech Co., Ltd. All rights reserved.
//

import Alamofire
import SwiftUtils
import Async
import Foundation
// MARK: - Request Serializer
extension ApiManager {
    
    func request(method: HTTPMethod, path: URLConvertible, params: JSObject? = nil, completion: Completion?)
        -> Request? {
            let params = params ?? JSObject()
            let encode: ParameterEncoding = (method == Alamofire.HTTPMethod.get ? URLEncoding.queryString : JSONEncoding(options: []))
            let headers = defaultHTTPHeaders
            let request = manager.request(path, method: method, parameters: params, encoding: encode, headers: headers)
            request.response(completion: completion)
            request.validate()
            return request
    }

    var defaultHTTPHeaders: [String: String] {
        let headers = SessionManager.defaultHTTPHeaders
        return headers
    }
}
