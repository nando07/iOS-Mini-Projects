//
//  Functions.swift
//  MyLocations
//
//  Created by Fernando Gomez on 8/22/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
   DispatchQueue.main.asyncAfter(deadline: .now() + seconds,
                                 execute: closure)
}

let applicationDocumentsDirectory: URL = {
   
   let paths = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory
      , in: FileManager.SearchPathDomainMask.userDomainMask)
   
//   let paths = FileManager.default.urlsForDirectory(
//      .documentDirectory, inDomains: .userDomainMask)
   return paths[0]
}()

let MyManagedObjectContextSaveDidFailNotification = Notification.Name(
   rawValue: "MyManagedObjectContextSaveDidFailNotification")
func fatalCoreDataError(_ error: Error) {
   print("*** Fatal error: \(error)")
   NotificationCenter.default.post(
      name: MyManagedObjectContextSaveDidFailNotification, object: nil)
}
