//
//  TargetType.swift
//  AppStoreClone
//
//  Created by 이문정 on 2021/09/11.
//

import Foundation

protocol TargetType {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var parm: [String: String]? { get }
}

enum HTTPMethod: String {
    case get = "Get"
    case post = "Post"
}
