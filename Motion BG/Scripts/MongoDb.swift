//
//  MongoDB.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 08/02/23.
//

import Foundation
import MongoSwiftSync

func connectToMongo(){
    defer {
        cleanupMongoSwift()
    }
    
    do{
        let uri = "mongodb+srv://<username>:<password>@<cluster-address>/test?w=majority"
        let client = try MongoClient(uri)
        
        print (try client.listDatabaseNames())
    }
    catch{
          print("Error")
    }
}
