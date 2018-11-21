//
//  ZupWebApi.swift
//  ZupApp
//
//  Created by Amanda Rosa on 2018-11-20.
//  Copyright © 2018 Amanda Rosa. All rights reserved.
//

import Foundation
import Alamofire

class ZupWebApi {
    
    static private let repositoryPath = "https://api.github.com/users/apple/repos"
    
    class func getAppleRepositories(_ onComplete: @escaping (Any?) -> Void) {
        
        Alamofire.request(repositoryPath, method: .get, encoding: JSONEncoding.default).responseJSON {
                (response:DataResponse) in
                switch(response.result) {                    
                case .success:
                    if let data = response.result.value{
                        //print(data)
                        onComplete(data)
                    } else {
                        onComplete(nil)
                        return
                    }
                    break
                case .failure:
                    onComplete(nil)
                    break
                }
        }
    }
    
    
    
    
}
