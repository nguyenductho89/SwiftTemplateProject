//
//  WebServiceResponse.swift
//  SwiftTemplateProject
//
//  Created by NGUYEN DUC THO on 3/28/17.
//  Copyright © 2017 Nguyen Duc Tho. All rights reserved.
//

import Foundation
import UIKit
import ObjectMapper
class WebServiceResponse:NSObject, Mappable {
    var resultCode = ""
    var resultError = ""
    required init?(map: Map){
        super.init()
        mapping(map: map)
    }
    func mapping(map: Map) {
        resultCode <- map["result_code"]
        resultError <- map["result_error"]
    }
}
