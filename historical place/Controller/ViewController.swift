//
//  ViewController.swift
//  historical place
//
//  Created by MacBook Air on 5/11/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var roundDhaka: UIButton!
    @IBOutlet weak var roundCTG: UIButton!
    @IBOutlet weak var roundKhulna: UIButton!
    @IBOutlet weak var roundSylhet: UIButton!
    @IBOutlet weak var roundBarishal: UIButton!
    @IBOutlet weak var roundRajshahi: UIButton!
    @IBOutlet weak var roundRangpur: UIButton!
    @IBOutlet weak var roundMymensingh: UIButton!
    @IBOutlet weak var roundExit: UIButton!
    
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    @IBOutlet weak var leading: NSLayoutConstraint!
    var menu = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        roundDhaka.layer.cornerRadius = 6
        roundCTG.layer.cornerRadius = 6
        roundKhulna.layer.cornerRadius = 6
        roundSylhet.layer.cornerRadius = 6
        roundBarishal.layer.cornerRadius = 6
        roundRajshahi.layer.cornerRadius = 6
        roundRangpur.layer.cornerRadius = 6
        roundMymensingh.layer.cornerRadius = 6
        roundExit.layer.cornerRadius = 6
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mainMenu(_ sender: Any) {
        if menu == false{
            leading.constant = 150
            trailing.constant = 0
            menu = true
        }
        else{
            leading.constant = 0
            trailing.constant = 0
            menu = false
        }
    }
    
    
    @IBAction func exit(_ sender: Any) {
        let alert = UIAlertController(title: "Quit", message: "Quit application?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { _ in
            UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
            
                   }))
        
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    


}

