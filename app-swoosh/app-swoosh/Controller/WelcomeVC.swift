//
//  ViewController.swift
//  app-swoosh
//
//  Created by AbdelRahman Aref on 9/19/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //programmatically center background image and swoosh logo
//        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//        bgimg.frame = view.frame;
        
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }

}

