//
//  ResponseSerializer.swift
// MyFood
//
//  Created by DaoNV on 3/7/16.
//  Copyright © 2016 AsianTech Inc. All rights reserved.
//

import Alamofire
import SwiftUtils
import Async

// MARK: - Response Serializer

extension DataRequest {
    func response( completion: Completion?) {
        responseJSON { (response) in
            let responseObject = response.result
            #if DEBUG
                print("================START===============")
                if let httpMethod = response.request?.httpMethod, let url = response.request?.url {
                    print("Method: \(httpMethod)\n\(url)")
                }
                if let data = response.request?.httpBody {
                    print("\nBody")
                    print(NSString(data: data, encoding: String.Encoding.utf8.rawValue) ?? "")
                }
                if let data = response.data {
                    print("\nData")
                    print(NSString(data: data, encoding: String.Encoding.utf8.rawValue) ?? "")
                }
                print("=================END================")
            #endif
            switch responseObject {
            case .success(let value) :
                if let json = value as? JSObject {
                    completion?(Result.success(json))
                    return
                }
                completion?(Result.failure(CFError.JSON))
                break
            case .failure(let error):
                completion?(Result.failure(error))
            }
        }
    }
}
