//
//  ViewController.swift
//  IosMorganRss
//
//  Created by Morladim on 2017/8/22.
//  Copyright © 2017年 morladim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ls = LsHttpClient()
        ls.request()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

