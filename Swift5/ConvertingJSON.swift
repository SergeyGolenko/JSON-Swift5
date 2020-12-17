//
//  ConvertingJSON.swift
//  Swift5
//
//  Created by Сергей Голенко on 17.12.2020.
//

import Foundation

class ConvertJson:Codable{
    var title = ""
    var subtitle = ""
    var imageURL = ""
    
    
    enum CodingKeys:String,CodingKey{
        case title
        case subtitle
        case imageURL = "image"
        
        }
    }

