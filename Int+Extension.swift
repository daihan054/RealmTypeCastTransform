//
//  Int+Extension.swift
//  ObjectMapperAdditions
//
//  Created by Anton Plebanovich on 28.07.22.
//  Copyright © 2022 Anton Plebanovich. All rights reserved.
//

import Foundation

extension Int {
    
    static func safeFrom(_ double: Double, file: String = #file, function: String = #function, line: UInt = #line) -> Int? {
        let roundedDouble = double.rounded()
        if let int = Int(exactly: roundedDouble) {
            if roundedDouble != double {
            }
            
            return int
            
        } else {
            return nil
        }
    }
    
    static func safeFrom(_ string: String, file: String = #file, function: String = #function, line: UInt = #line) -> Int? {
        if string.isNil {
            return nil
        }
        
        if let int = Int(string) {
            return int
            
        } else if let double = Double.safeFrom(string, file: file, function: function, line: line) {
            return safeFrom(double, file: file, function: function, line: line)
            
        } else {
            return nil
        }
    }
}
