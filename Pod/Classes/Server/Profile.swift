//
//  Profile.swift
//  soca
//
//  Created by Zhuhao Wang on 4/2/15.
//  Copyright (c) 2015 Zhuhao Wang. All rights reserved.
//

import Foundation

/**
 *  Profile holds the set of proxies with specific rules you would like to run simutaneouly.
*/
public class Profile {
    let pacServer: PACServer?
    let proxyServers: [ProxyServer]
    public let url: NSURL
    
    init(proxyServers: [ProxyServer], pacServer: PACServer? = nil, url: NSURL) {
        self.pacServer = pacServer
        self.proxyServers = proxyServers
        self.url = url
    }
    
    public func start() {
        for server in proxyServers {
            server.startProxy()
        }
        pacServer?.startProxy()
    }
    
    public func stop() {
        for server in proxyServers {
            server.stopServer()
        }
        pacServer?.stopServer()
    }
}