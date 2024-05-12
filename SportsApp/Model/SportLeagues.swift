//
//  BasketballLeagues.swift
//  SportsApp
//
//  Created by JETSMobileLabMini9 on 12/05/2024.
//

import Foundation

struct SportLeagues: Codable {

  var leagueKey   : Int?    = nil
  var leagueName  : String? = nil


  enum CodingKeys: String, CodingKey {

    case leagueKey   = "league_key"
    case leagueName  = "league_name"
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    leagueKey   = try values.decodeIfPresent(Int.self    , forKey: .leagueKey   )
    leagueName  = try values.decodeIfPresent(String.self , forKey: .leagueName  )
  }

  init() {

  }

}
