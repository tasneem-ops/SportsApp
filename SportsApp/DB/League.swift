//
//  League.swift
//  SportsApp
//
//  Created by JETSMobileLabMini6 on 12/05/2024.
//

import Foundation

class League{
    var name : String
    var key: Int16
    var logoUrl : String
    init(name: String, key: Int16, logoUrl: String) {
        self.name = name
        self.key = key
        self.logoUrl = logoUrl
    }
}
