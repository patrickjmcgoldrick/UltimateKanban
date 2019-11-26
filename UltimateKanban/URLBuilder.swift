//
//  URLBuilder.swift
//  UltimateKanban
//
//  Created by dirtbag on 11/26/19.
//  Copyright © 2019 dirtbag. All rights reserved.
//

import Foundation

class URLBuilder {
    
    
    let loginEndPoint = "users/login"
    
    let baseURL = "https://api.backendless.com/"
    
    let GET_USERS = "https://api.backendless.com/C8FB6A2D-4882-665E-FF9A-EEDE07CD5100/6DC5E97A-B8B2-4DB1-9853-A7E39F56B724/data/Users"
    
    let applicaitonId = "C8FB6A2D-4882-665E-FF9A-EEDE07CD5100/"
    
    let apiKey = "6DC5E97A-B8B2-4DB1-9853-A7E39F56B724/"
    
    let endPoint = "data/Users"
    
    func getloginURL() -> String {
        return baseURL + applicaitonId + apiKey + loginEndPoint
    }
    
    let pokiman_base_url = "https://pokeapi.co/api/v2/"
    
    let ditto = "pokemon/ditto/"
    
    func getDittoURL() -> String {
        return pokiman_base_url + ditto
    }
}
