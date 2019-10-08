//
//  JsonDownloader.swift
//  CarFax UCL
//
//  Created by Derrick W on 10/6/19.
//  Copyright © 2019 12Techs. All rights reserved.
//

import Foundation

class JsonDownloader {
    


let url = URL(string: "https://carfax-for-consumers.firebaseio.com/assignment.json")


func downloadJson() {
    
    guard let jsonUrl = url else {print("check the url");return}
    
    let session = URLSession.shared
    
    session.dataTask(with: jsonUrl) { (data,response,err) in
        
        guard let data = data, response != nil, err == nil else { print("check the data");return }
        
        let decoder = JSONDecoder()
        
        do
        {
            let dataDownloaded = try! decoder.decode(ListingsLayer.self, from: data)
            print("Your JSON data downloaded Successfully and has been decoded succesfully")
            print(dataDownloaded.listings[0].make)
        }
        catch
        {
            print("check the decoding")
        }
        
        
        
        }.resume()
    
}

}
