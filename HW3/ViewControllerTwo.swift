//
//  ViewControllerTwo.swift
//  HW3
//
//  Created by Alexander VanBeekum on 3/16/19.
//  Copyright © 2019 Alexander VanBeekum. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTwo: UIViewController {
    
    let dayColor = UIColor(red: 255/255.0, green: 142/255.0, blue: 137/255.0, alpha:1)
    let nightColor = UIColor(red: 127/255.0, green: 34/255.0, blue: 30/255.0, alpha:1)
    
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
