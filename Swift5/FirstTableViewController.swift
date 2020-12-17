//
//  FirstTableViewController.swift
//  Swift5
//
//  Created by Сергей Голенко on 17.12.2020.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var items : [ConvertJson] = []
    
    let urlZappy = "https://zappycode.com/api/courses"
    
    func getCources(){
        if let url = URL(string: urlZappy) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { [self]data,response,error  in
                if error != nil {
                    print("There was an error")
                } else if data != nil {
                   // print(String(data:data!,encoding: .utf8))
                    if let courcesFromJson =  try?  JSONDecoder().decode([ConvertJson].self, from: data!) {
                        
                        print(courcesFromJson)
                        DispatchQueue.main.async {
                            self.items = courcesFromJson
                            tableView.reloadData()
                        }
                       
                        
                    }
                }
                
                
                
            }.resume()
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//getCources()
    
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  5  }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
//        let itemForCell = items[indexPath.row].title
//        cell?.textLabel?.text = itemForCell
        return cell!
    }

}
