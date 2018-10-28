//
//  AppDelegate.swift
//  Todoey
//
//  Created by Joseph Kim on 10/6/18.
//  Copyright © 2018 Joseph Kim. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        do {
            _ = try Realm()
        } catch  {
            print("Eror initiating new realm, \(error)")
        }
        
        return true
    }
}

