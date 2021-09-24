//
//  Model.swift
//  AppStoreClone
//
//  Created by 이문정 on 2021/09/07.
//

//https://itunes.apple.com/search
//let parameters = [
//“term” : “카카오톡”,
//"country" : "kr",
//"media" : "software"
//]

import Foundation

struct SearchModel: Codable {
    let resultCount: Int
    let results: [SearchResultModel]
}
struct SearchResultModel: Codable {
    let appletvScreenshotUrls: [String]?
    let screenshotUrls: [String]?
    let ipadScreenshotUrls: [String]?
    let artworkUrl60: String?
    let artworkUrl512: String?
    let artworkUrl100: String?
    let artistViewUrl: String?
    let supportedDevices: [String]?
    let advisories: [String]?
    let isGameCenterEnabled: Bool?
    let kind: String?
    let features: [String]?
    let minimumOsVersion: String?
    let trackCensoredName: String?
    let languageCodesISO2A: [String]?
    let fileSizeBytes: String?
    let formattedPrice: String?
    let contentAdvisoryRating: String?
    let averageUserRatingForCurrentVersion: Double?
    let userRatingCountForCurrentVersion: Int?
    let averageUserRating: Double?
    let trackViewUrl: String?
    let trackContentRating: String?
    let genreIds: [String]?
    let trackId: Int?
    let trackName: String?
    let releaseDate: String? // "2019-05-28T13:25:49Z"인데 String맞나? Date인가? timeInterval로만 해봐서...
    let sellerUrl: String?
    let sellerName: String?
    let primaryGenreName: String?
    let isVppDeviceBasedLicensingEnabled: Bool?
    let currentVersionReleaseDate: String?
    let releaseNotes: String?
    let primaryGenreId: Int?
    let currency: String?
    let version: String?
    let wrapperType: String?
    let artistId: Int?
    let artistName: String?
    let genres: [String]?
    let price: Float? // Double까지 필요 없을 거 같아서
    let description: String?
    let bundleId: String?
    let userRatingCount: Int?
}

//import Foundation
//
//struct APIResult: Codable {
//    let resultCount: Int
//    let results: [Result]
//}
//
//struct Result: Codable {
//    let screenshotUrls, ipadScreenshotUrls: [String]
//    let artworkUrl60, artworkUrl512, artworkUrl100: String
//    let artistViewURL: String
//    let appletvScreenshotUrls: [JSONAny]
//    let advisories, supportedDevices: [String]
//    let isGameCenterEnabled: Bool
//    let features: [Feature]
//    let kind: Kind
//    let minimumOSVersion, trackCensoredName: String
//    let languageCodesISO2A: [String]
//    let fileSizeBytes: String
//    let formattedPrice: FormattedPrice
//    let contentAdvisoryRating: Rating
//    let averageUserRatingForCurrentVersion: Double
//    let userRatingCountForCurrentVersion: Int
//    let averageUserRating: Double
//    let trackViewURL: String
//    let trackContentRating: Rating
//    let genreIDS: [String]
//    let primaryGenreName: String
//    let releaseDate: Date
//    let isVppDeviceBasedLicensingEnabled: Bool
//    let trackID: Int
//    let trackName: String
//    let primaryGenreID: Int
//    let sellerName: String
//    let currentVersionReleaseDate: Date
//    let releaseNotes: String
//    let currency: Currency
//    let resultDescription: String
//    let artistID: Int
//    let artistName: String
//    let genres: [String]
//    let price: Int
//    let bundleID, version: String
//    let wrapperType: Kind
//    let userRatingCount: Int
//    let sellerURL: String?
//
//    enum CodingKeys: String, CodingKey {
//        case screenshotUrls, ipadScreenshotUrls, artworkUrl60, artworkUrl512, artworkUrl100
//        case artistViewURL = "artistViewUrl"
//        case appletvScreenshotUrls, advisories, supportedDevices, isGameCenterEnabled, features, kind
//        case minimumOSVersion = "minimumOsVersion"
//        case trackCensoredName, languageCodesISO2A, fileSizeBytes, formattedPrice, contentAdvisoryRating, averageUserRatingForCurrentVersion, userRatingCountForCurrentVersion, averageUserRating
//        case trackViewURL = "trackViewUrl"
//        case trackContentRating
//        case genreIDS = "genreIds"
//        case primaryGenreName, releaseDate, isVppDeviceBasedLicensingEnabled
//        case trackID = "trackId"
//        case trackName
//        case primaryGenreID = "primaryGenreId"
//        case sellerName, currentVersionReleaseDate, releaseNotes, currency
//        case resultDescription = "description"
//        case artistID = "artistId"
//        case artistName, genres, price
//        case bundleID = "bundleId"
//        case version, wrapperType, userRatingCount
//        case sellerURL = "sellerUrl"
//    }
//}
//
//enum Rating: String, Codable {
//    case the12 = "12+"
//    case the17 = "17+"
//    case the4 = "4+"
//    case the9 = "9+"
//}
//
//enum Currency: String, Codable {
//    case krw = "KRW"
//}
//
//enum Feature: String, Codable {
//    case gameCenter = "gameCenter"
//    case iosUniversal = "iosUniversal"
//}
//
//enum FormattedPrice: String, Codable {
//    case the2500 = "￦2,500"
//    case 무료 = "무료"
//}
//
//enum Kind: String, Codable {
//    case software = "software"
//}
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//        return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//        return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if container.decodeNil() {
//            return JSONNull()
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if let value = try? container.decodeNil() {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer() {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//        if let value = try? container.decode(Bool.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Double.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(String.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decodeNil(forKey: key) {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//        var arr: [Any] = []
//        while !container.isAtEnd {
//            let value = try decode(from: &container)
//            arr.append(value)
//        }
//        return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//        var dict = [String: Any]()
//        for key in container.allKeys {
//            let value = try decode(from: &container, forKey: key)
//            dict[key.stringValue] = value
//        }
//        return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//        for value in array {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer()
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//        for (key, value) in dictionary {
//            let key = JSONCodingKey(stringValue: key)!
//            if let value = value as? Bool {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Int64 {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Double {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? String {
//                try container.encode(value, forKey: key)
//            } else if value is JSONNull {
//                try container.encodeNil(forKey: key)
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer(forKey: key)
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//        if let value = value as? Bool {
//            try container.encode(value)
//        } else if let value = value as? Int64 {
//            try container.encode(value)
//        } else if let value = value as? Double {
//            try container.encode(value)
//        } else if let value = value as? String {
//            try container.encode(value)
//        } else if value is JSONNull {
//            try container.encodeNil()
//        } else {
//            throw encodingError(forValue: value, codingPath: container.codingPath)
//        }
//    }
//
//    public required init(from decoder: Decoder) throws {
//        if var arrayContainer = try? decoder.unkeyedContainer() {
//            self.value = try JSONAny.decodeArray(from: &arrayContainer)
//        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//            self.value = try JSONAny.decodeDictionary(from: &container)
//        } else {
//            let container = try decoder.singleValueContainer()
//            self.value = try JSONAny.decode(from: container)
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        if let arr = self.value as? [Any] {
//            var container = encoder.unkeyedContainer()
//            try JSONAny.encode(to: &container, array: arr)
//        } else if let dict = self.value as? [String: Any] {
//            var container = encoder.container(keyedBy: JSONCodingKey.self)
//            try JSONAny.encode(to: &container, dictionary: dict)
//        } else {
//            var container = encoder.singleValueContainer()
//            try JSONAny.encode(to: &container, value: self.value)
//        }
//    }
//}
