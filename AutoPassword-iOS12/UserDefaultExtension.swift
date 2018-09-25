//
//  UserDefaultExtension.swift
//  AutoPassword-iOS12
//
//  Created by Vineet Choudhary on 24/09/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    var username: String? {
        get {
            return string(forKey: "username")
        }
        set {
            set(newValue, forKey: "username")
            synchronize()
        }
    }

}
