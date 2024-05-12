//
//  RemoteDataSource.swift
//  SportsApp
//
//  Created by Tasnem on 11/05/2024.
//

import UIKit
import Alamofire

protocol IRemoteDataSource<T>{
    associatedtype T
    mutating func getAllLeagues(sportType: SportType ,complitionHandler: @escaping ([T]?) -> Void)
}

class RemoteDataSource<Result : Decodable>: IRemoteDataSource {
    typealias T = Result
    let baseUrl = "https://apiv2.allsportsapi.com/"
    let apiKey = "34e5babdbca7fd35bfc77f1203fcf99808885b0babef7cc966572dc08ae95c2b"
    
    func getAllLeagues(sportType: SportType, complitionHandler: @escaping ([Result]?) -> Void) {
        let url = baseUrl + sportType.rawValue + "/?met=Leagues&APIkey=" + apiKey
        AF.request(url).responseJSON{
            response in
            do{
                let json = try JSONDecoder().decode(Result.self, from: response.data!)
            }catch let error{
                print(error)
                complitionHandler(nil)
            }
        }
    }

}
