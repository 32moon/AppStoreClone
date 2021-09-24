//
//  NetworkLayer.swift
//  AppStoreClone
//
//  Created by 이문정 on 2021/08/28.
//

import Foundation

class NetworkManager {
    
    static func request(target: Target, completion: @escaping([SearchResultModel]) -> Void) {
        let session = URLSession(configuration: .default)
        
        var urlComponents = URLComponents()
        urlComponents.scheme = target.scheme
        urlComponents.host = target.host
        urlComponents.path = target.path
        //클로저 축약 문법 공부하기
        urlComponents.queryItems = target.parm?.map { key, value in
            return URLQueryItem(name: key, value: value)
        }
        
        guard let url = urlComponents.url else { return }
        var request = URLRequest(url: url)
        request.httpMethod = target.httpMethod.rawValue
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            let successRange = 200..<300
            guard error == nil,
                  let statusCode = (response as? HTTPURLResponse)?.statusCode,
                  successRange.contains(statusCode) else {
                completion([])
                return
            }
            
            guard let resultData = data else {
                completion([])
                return
            }
            
            let apps = NetworkManager.decode(resultData)
            completion(apps)
        }
        dataTask.resume()
    }
    
    static func decode(_ data: Data) -> [SearchResultModel] {
        let decoder = JSONDecoder()
        
        do {
            let response = try decoder.decode(SearchModel.self, from: data)
            let apps = response.results
            return apps
        } catch let error {
            print("--> parsing error: \(error.localizedDescription)")
            return []
        }
    }
}


