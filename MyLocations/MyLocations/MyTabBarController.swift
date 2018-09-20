//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Fernando Gomez on 9/19/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
   override var preferredStatusBarStyle: UIStatusBarStyle {
      return .lightContent
   }
   override var childForStatusBarStyle: UIViewController? {
      return nil
   }
}
