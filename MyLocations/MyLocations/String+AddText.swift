//
//  String+AddText.swift
//  MyLocations
//
//  Created by Fernando Gomez on 9/14/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

extension String {
   mutating func add(text: String?, separatedBy separator: String = "") {
      if let text = text {
         if !isEmpty {
            self += separator
         }
         self += text
      }
   }
}
