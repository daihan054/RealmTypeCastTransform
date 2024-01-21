//
//  Bool+Extension.swift
//  ObjectMapperAdditions
//
//  Created by Anton Plebanovich on 28.07.22.
//  Copyright © 2022 Anton Plebanovich. All rights reserved.
//

import Foundation

extension Bool {
    
    static func safeFrom(_ string: String, file: String = #file, function: String = #function, line: UInt = #line) -> Bool? {
        if string.isEmpty || string == "-" {
            return nil
        }
        
        if let bool = string.asBool {
            return bool
        } else {
            return nil
        }
    }
}
