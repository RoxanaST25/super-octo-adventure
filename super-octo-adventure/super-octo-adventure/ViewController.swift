//
//  ViewController.swift
//  super-octo-adventure
//
//  Created by Main User on 2023-07-25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let bigX = view.frame.size.width/2 //195 = Center of big white screen
//        let smallX = bigX - (swoosh.frame.size.width/2)
//        swoosh.frame = CGRect(x: smallX, y: 90, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
        
//        bgimg.frame = view.frame;
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}

