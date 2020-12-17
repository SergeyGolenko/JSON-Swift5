//
//  FirstTableViewController.swift
//  Swift5
//
//  Created by Сергей Голенко on 17.12.2020.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    let urlZappy = "https://zappycode.com/api/courses"
    
    func getCources(){
        if let url = URL(string: urlZappy) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) {data,response,error  in
                if error != nil {
                    print("There was an error")
                } else if data != nil {
                    print(String(data:data!,encoding: .utf8))
                }
                
                
                
            }.resume()
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
getCources()
    
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        return cell!
    }

}
