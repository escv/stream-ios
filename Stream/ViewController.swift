//
//  ViewController.swift
//  Stream
//
//  Created by Andre Albert on 23.11.14.
//  Copyright (c) 2014 PRODYNA. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireSwiftyJSON



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "http://httpbin.org/get", parameters: ["foo": "bar"])
            .responseSwiftyJSON { (request, response, json, error) in
                println(json["headers"]["User-Agent"])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

