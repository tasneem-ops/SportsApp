//
//  ViewController.swift
//  SportsApp
//
//  Created by JETSMobileLabMini9 on 09/05/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var remoteDataSource : RemoteDataSource<APIResultFootballLeagues>
        remoteDataSource = RemoteDataSource()
        // Do any additional setup after loading the view.
        LocalDataSource.localDataSource.insert(league: League(name: "Hala", key: 123, logoUrl: "gd"))
        remoteDataSource.getAllLeagues(sportType: .football, complitionHandler: {
            data in
            print(data?.count)
        })
    }


}

