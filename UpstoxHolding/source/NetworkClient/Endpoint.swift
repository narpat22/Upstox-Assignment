//
//  Endpoint.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//

import Foundation

protocol Endpoint {
  var url: URL? { get }
  var method: HTTPMethod { get }
  var headers: [String: String] { get }
  var body: Data? { get }
}

enum HTTPMethod: String {
  case get, post, put, delete, patch
}

