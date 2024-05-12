//
//  APIResultTeams.swift
//  SportsApp
//
//  Created by JETSMobileLabMini9 on 12/05/2024.
//

import Foundation

struct APIResultTeams: Codable {

  var success : Int?      = nil
  var result  : [APITeam]? = []

  enum CodingKeys: String, CodingKey {

    case success = "success"
    case result  = "result"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    success = try values.decodeIfPresent(Int.self      , forKey: .success )
    result  = try values.decodeIfPresent([APITeam].self , forKey: .result  )
 
  }

  init() {

  }

}
