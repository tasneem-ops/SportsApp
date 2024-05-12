//
//  FootballLeagues.swift
//  SportsApp
//
//  Created by Tasnem on 11/05/2024.
//

import Foundation
struct FootballLeagues: Codable {

  var leagueKey   : Int?    = nil
  var leagueName  : String? = nil
  var countryKey  : Int?    = nil
  var countryName : String? = nil

  enum CodingKeys: String, CodingKey {

    case leagueKey   = "league_key"
    case leagueName  = "league_name"
    case countryKey  = "country_key"
    case countryName = "country_name"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    leagueKey   = try values.decodeIfPresent(Int.self    , forKey: .leagueKey   )
    leagueName  = try values.decodeIfPresent(String.self , forKey: .leagueName  )
    countryKey  = try values.decodeIfPresent(Int.self    , forKey: .countryKey  )
    countryName = try values.decodeIfPresent(String.self , forKey: .countryName )
 
  }

  init() {

  }

}
