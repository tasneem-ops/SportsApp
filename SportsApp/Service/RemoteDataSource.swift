//
//  RemoteDataSource.swift
//  SportsApp
//
//  Created by Tasnem on 11/05/2024.
//

import Alamofire
import Foundation

protocol IRemoteDataSource<T>{
    associatedtype T
    mutating func fetchData(url: String ,complitionHandler: @escaping (T?) -> Void)
}

class RemoteDataSource<Result : Decodable>: IRemoteDataSource {
    
    typealias T = Result
    
    func fetchData(url: String, complitionHandler: @escaping (Result?) -> Void) {
        AF.request(url).responseJSON{
            response in
            if let data = response.data{
                do{
                    let json = try JSONDecoder().decode(Result.self, from: data)
                    complitionHandler(json)
                }catch let error{
                    print(error)
                    complitionHandler(nil)
                }
            }
            else{
                complitionHandler(nil)
            }
            
        }
    }
}
