//
//  Modal.swift
//  CarFax UCL
//
//  Created by Derrick W on 10/6/19.
//  Copyright © 2019 12Techs. All rights reserved.
//


import UIKit

//modal classes of json Hierarchy
class ListingsLayer:Codable {
    
    let listings:[Listings]
    
    //coding keys
    enum TheCodingKeys: String, CodingKey {
        case listings = "listings"
    }
}

class Listings: Codable {
    //mandatory for project
    let year: Int
    let make: String
    let model: String
    let trim: String
    let listPrice: Int
    let mileage: Int
    
    let dealer: Dealer
    let images: Images?
    
    
    
    //extra for full listings
    
    //coding keys
    enum SpecsCodingKeys: String, CodingKey {
        case year = "year"
        case make = "make"
        case model = "model"
        case trim = "trim"
        case listPrice = "listPrice"
        case mileage = "mileage"
        
        case dealer = "dealer"
        case images = "images"
    }
}

class Dealer: Codable {
    let city: String
    let phone: String
    
    //coding keys
    enum DealerCodingKeys: String, CodingKey {
        case city = "city"
        case phone = "phone"
    }
    
}

class Images: Codable {
    let firstPhoto: VehiclePhotos?

    //coding keys
    enum ImagesCodingKeys: String, CodingKey {
        case firstPhoto = "firstPhoto"
    }
    
  
    
}


class VehiclePhotos: Codable {

    let large: String?
    let medium: String?
    let small:String?

    //coding keys
    enum ImagesCodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case small = "small"
    }
}
