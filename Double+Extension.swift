//
//  Double+Extension.swift
//  ObjectMapperAdditions
//
//  Created by Anton Plebanovich on 28.07.22.
//  Copyright © 2022 Anton Plebanovich. All rights reserved.
//

import Foundation

extension Double {
    
    static func safeFrom(_ string: String, file: String = #file, function: String = #function, line: UInt = #line) -> Double? {
        if string.isNil {
            return nil
        }
        
        if let double = Double(string) {
            return double
        } else {
            return nil
        }
    }
    
}
