//
//  Terget.swift
//  AppStoreClone
//
//  Created by 이문정 on 2021/09/11.
//

import Foundation

enum Target {
    // https://onelife2live.tistory.com/13
    case search(word: String)
    case detail
}

extension Target: TargetType {
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "itunes.apple.com"
    }
    
    var path: String {
        switch self {
        case .search:
            return "/search"
        case .detail:
            return "/detail"
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .search:
            return .get
        case .detail:
            return .get
        }
    }
    
    var parm: [String: String]? {
        switch self {
        case let .search(word):
            return ["term" : word,
                    "media" : "software",
                    "country" : "kr" ]
        case .detail:
            return nil
        }
    }
}
