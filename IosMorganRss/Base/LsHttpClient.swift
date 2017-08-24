//
//  LsHttpClient.swift
//  MorganRss
//
//  Created by Morladim on 2017/8/22.
//  Copyright © 2017年 morladim. All rights reserved.
//
import UIKit
import Alamofire
import SwiftyXMLParser

class LsHttpClient{
    
    //  public override init(){}
    
    //    func request() {
    //        DispatchQueue.global().async{}
    //        print("测个试真麻烦！")
    //        Alamofire.request("http://www.appinn.com/feed")
    //            .response{
    //                response in
    //                //                print(response)
    //                print("Request: \(String(describing: response.request))")
    //                print("Response: \(String(describing: response.response))")
    //                print("Error: \(String(describing: response.error))")
    //
    //                if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
    //                    print("Data: \(utf8Text)")
    //                    let xml = try! XML.parse(data)
    //                    let accessor = xml["rss"]
    //                    print(accessor.text ?? "nothing")
    //                }
    //        }
    //    }
    
    func request() {
        Alamofire.request("http://www.appinn.com/feed")
            .responseData{
                response in
                print("Request: \(String(describing: response.request))")
                print("Response: \(String(describing: response.response))")
                print("Error: \(String(describing: response.error))")
//                print("Data: \(String(describing: response.data))")
                
                if let data = response.data{
                    let xml = XML.parse(data)
                    print(xml["rss","channel","title"].text ?? "")
                    print(xml["rss","channel","atom:link"].attributes["href"] ?? "ege")
                }
        }
    }
    
}
