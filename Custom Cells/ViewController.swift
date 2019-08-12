//
//  ViewController.swift
//  CustomCells
//
//  Created by Dwayne Neckles on 8/11/19.
//  Copyright © 2019 Dwayne Neckles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataService {
    
    var countries = [Country]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        countries = createCountries()!
        
        for i in countries {
            print(i.name)
        }
    }
    
    
}


extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FlagCell
                
        cell.country = countries[indexPath.row]
        
        return cell
    }
    
  
}
