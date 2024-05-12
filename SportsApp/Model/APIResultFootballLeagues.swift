//
//  APIResultFootballLeagues.swift
//  SportsApp
//
//  Created by Tasnem on 11/05/2024.
//

import Foundation
struct APIResultFootballLeagues: Codable {

  var success : Int?      = nil
  var result  : [FootballLeagues]? = []

  enum CodingKeys: String, CodingKey {

    case success = "success"
    case result  = "result"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    success = try values.decodeIfPresent(Int.self      , forKey: .success )
    result  = try values.decodeIfPresent([FootballLeagues].self , forKey: .result  )
 
  }

  init() {

  }

}
