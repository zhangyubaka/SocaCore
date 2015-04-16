//
//  ProfileConfig.swift
//  soca
//
//  Created by Zhuhao Wang on 4/2/15.
//  Copyright (c) 2015 Zhuhao Wang. All rights reserved.
//

import Foundation
import CoreData

@objc(ProfileConfig)
public class ProfileConfig: NSManagedObject {

    @NSManaged public var name: String
    @NSManaged public var proxies: NSSet
    
    func proxyArray() -> [ProxyConfig] {
        return proxies.allObjects as! [ProxyConfig]
    }
    
    public func profile() -> Profile {
        let profile = Profile(profileConfig: self)
        profile.config = self
        return profile
    }
}
