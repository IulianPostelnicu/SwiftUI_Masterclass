//
//  CodableBundleExtension.swift
//  AfricaAppIulian
//
//  Created by Macbook Pro on 15.03.2021.
//

import Foundation

extension Bundle {
    func decode(_ file: String)->[CoverImage]{
        // locate json file
        guard let url=self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to locate \(file) in bundle")
        }
        
        //create property data
        guard let data=try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //create decoder
        let decoder = JSONDecoder()
        
        //create property for decoder data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode data from \(file)")
        }
        
        //return the ready to use data
        return loaded
    }
}
