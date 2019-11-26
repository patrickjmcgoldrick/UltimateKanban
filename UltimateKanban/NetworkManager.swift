//
//  NetworkManager.swift
//  UltimateKanban
//
//  Created by dirtbag on 11/26/19.
//  Copyright © 2019 dirtbag. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func getDitto() {
        guard let dittoURL = URL(string: URLBuilder().getDittoURL()) else { return }
        
        var request = URLRequest(url: dittoURL)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data else { return }
            
            print ("Data: \(String(bytes: data, encoding: .utf8)!)")
        }
        task.resume()
    }
    
    
    
    
    
    func get(username: String, password: String) {
        
        let urlString = URLBuilder().getloginURL()
        //print (url)
        
        guard let url = URL(string: urlString) else {
            print ("bad url")
            return }
        
        let params = [
            "login": username,
            "password": password
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let paramData = try JSONSerialization.data(withJSONObject: params, options: [])
            request.httpBody = paramData
            
        } catch{
            print ("param setup error: \(error.localizedDescription)")
        }
        
        print (url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
       
            if let error = error {
                print ("Found error: \(error.localizedDescription)")
                return
            }
            print ("Response: \(response.debugDescription)")
            
            guard let data = data else {
                print ("No Data")
                return}
            
            print ("Data: \(String(bytes: data, encoding: .utf8))")
            
        }
        
        task.resume()
    }
}
