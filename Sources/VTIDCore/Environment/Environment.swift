//
//  Environment.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import Foundation


public struct Environment {
    
    public static func get(_ key: String) -> String? {
        return ProcessInfo.processInfo.environment[key]
    }

}
