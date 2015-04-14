//
//  ServerAdapterConfig.swift
//  soca
//
//  Created by Zhuhao Wang on 3/12/15.
//  Copyright (c) 2015 Zhuhao Wang. All rights reserved.
//

import Foundation
import CoreData

@objc(ServerAdapterConfig)
public class ServerAdapterConfig: AdapterConfig {

    @NSManaged var server: String!
    @NSManaged var port: Int

}
