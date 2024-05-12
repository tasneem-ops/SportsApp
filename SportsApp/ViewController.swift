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
        remoteDataSource.fetchData(url: "https://apiv2.allsportsapi.com/football/?met=Leagues&APIkey=34e5babdbca7fd35bfc77f1203fcf99808885b0babef7cc966572dc08ae95c2b", complitionHandler: {
            data in
           
        })
        LocalDataSource.localDataSource.getAllLeagues { leagues in
            print(leagues.count)
        }
        LocalDataSource.localDataSource.deleteLeague(league: League(name: "Hala", key: 123, logoUrl: "gd"))
    }


}

