//
//  EventViewController.swift
//  SanatanHinduCalendar
//
//  Created by Harish Setty on 20/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

//import Foundation

import UIKit

class EventViewController: UIViewController {
    
    @IBOutlet var name: UITextView!
    
    @IBOutlet var place: UITextView!
    
    @IBOutlet var desc: UITextView!
    
    var model:Model = Model.sharedInstance
    
    @IBAction func save(sender: AnyObject) {
        
        model.saveEvent(name.text, place: place.text, desc: desc.text)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

