//
//  dhaka.swift
//  historical place
//
//  Created by Mizanur Remon on 15/12/19.
//  Copyright © 2019 MacBook Air. All rights reserved.
//

import UIKit

class dhaka: UIViewController {
    @IBOutlet weak var roundKella: UIButton!
    @IBOutlet weak var roundSoudho: UIButton!
    @IBOutlet weak var roundParliament: UIButton!
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
  
    var pos = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        roundKella.layer.cornerRadius = 6
        roundSoudho.layer.cornerRadius = 6
        roundParliament.layer.cornerRadius = 6
    }
    
    @IBAction func menuBar(_ sender: Any) {
        if pos == false{
            leading.constant = 150
            trailing.constant = 0
           
            pos = true
        }
        else{
            leading.constant = 0
            trailing.constant = 0
           
            pos = false
        }
    }
    
    

}
