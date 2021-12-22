//
//  DateFormatter.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/22.
//

import Foundation


extension DateFormatter {
    static var shortTimeFormatter: DateFormatter {
        let df = DateFormatter()
        df.timeStyle = .short
        df.dateStyle = .none
        
        return df
    }
}
