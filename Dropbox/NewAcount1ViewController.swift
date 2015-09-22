//
//  NewAcount1ViewController.swift
//  Dropbox
//
//  Created by Stephanie Parrott on 9/19/15.
//  Copyright © 2015 Stephanie Parrott. All rights reserved.
//

import UIKit

class NewAcount1ViewController: UIViewController {
    @IBOutlet weak var welcome1Button: UIButton!

   
    @IBOutlet weak var passwordChanged: UITextField!
    
    
    @IBOutlet weak var createWeak: UIImageView!
    @IBOutlet weak var createsoSo: UIImageView!
    @IBOutlet weak var createGood: UIImageView!
    @IBOutlet weak var createGreat: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createWeak.hidden = true
        createsoSo.hidden = true
        createGood.hidden = true
        createGreat.hidden = true
        createButton.hidden = true
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func passwordtypingChanged(sender: AnyObject) {
        
        if passwordChanged.text?.characters.count > 0 {
            createWeak.hidden = false
            createButton.hidden = false
            createsoSo.hidden = true
        }
        
        if passwordChanged.text?.characters.count > 4 {
            createsoSo.hidden = false
            createWeak.hidden = true
            createGood.hidden = true
            
        }
        if passwordChanged.text?.characters.count > 7 {
            createsoSo.hidden = true
            createWeak.hidden = true
            createGood.hidden = false
            createGreat.hidden = true
        }
        
        if passwordChanged.text?.characters.count > 10 {
            createsoSo.hidden = true
            createWeak.hidden = true
            createGood.hidden = true
            createGreat.hidden = false
        }
    }
  
    
    @IBAction func welcome1Clicked(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
}