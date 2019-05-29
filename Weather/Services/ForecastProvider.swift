//
//  ForecastProvider.swift
//  Weather
//
//  Created by John O'Connell on 5/28/19.
//  Copyright © 2019 John O'Connell. All rights reserved.
//

import Moya

enum ForecastProvider {
    case forecast(String, Double, Double)
}

extension ForecastProvider: TargetType {
    var baseURL: URL { return URL(string: "https://api.darksky.net")! }
    
    var path: String {
        switch self {
        case let .forecast(apiKey, lat, long):
            return "/forecast/\(apiKey)/\(lat),\(long)"
        }
    }
    
    var method: Method {
        switch self {
        case .forecast:
            return .get
        }
    }
    
    var sampleData: Data {
        return "".data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case .forecast:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
