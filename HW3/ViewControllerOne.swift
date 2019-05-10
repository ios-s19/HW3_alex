//
//  ViewController.swift
//  HW3
//
//  Created by Alexander VanBeekum on 3/16/19.
//  Copyright © 2019 Alexander VanBeekum. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerOne: UIViewController {
    
    let dayColor = UIColor(red: 205/255.0, green: 215/255.0, blue: 255/255.0, alpha:1)
    let nightColor = UIColor(red: 64/255.0, green: 77/255.0, blue: 127/255.0, alpha:1)

    @IBOutlet var text: UILabel!
    
    override func viewWillAppear(_ animatedz: Bool){
        super.viewWillAppear(animatedz)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "H"
        let hour = Int(dateFormatter.string(from:Date()))
        
        if hour! > 18 || hour! < 7 {
            view.backgroundColor = nightColor
            text.textColor = dayColor
        }else{
            view.backgroundColor = dayColor
            text.textColor = nightColor
        }
    }
}

