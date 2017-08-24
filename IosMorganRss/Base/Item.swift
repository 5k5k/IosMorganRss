//
//  Item.swift
//  IosMorganRss
//
//  Created by Morladim on 2017/8/23.
//  Copyright © 2017年 morladim. All rights reserved.
//
import Foundation

class Item{
    
    var title:String
    
    var link:String
    
    var pubDate:String
    
    var creator:String
    
    var author:String;
    
    var categorys:Array<String> = []
    
    var imageUrl:String
    
    var description:String
    
    var readed:Bool
    
    var collected:Bool
    
    
    init(title: String,link: String,pubDate:String,creator:String,author:String,imageUrl:String,description:String) {
        
        self.title = title
        self.link = link
        self.pubDate = pubDate
        self.creator = creator
        self.author = author
        self.imageUrl = imageUrl
        self.description = description
        readed = false
        collected = false
        
    }
    
    
    
    
}
