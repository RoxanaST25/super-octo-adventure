//
//  LeagueVC.swift
//  super-octo-adventure
//
//  Created by Main User on 2023-08-03.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextBtn: BorderButton!
//    outlets for reference
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        anything that i want to b played right away or funcs to b called right away
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensTapped(_ sender: Any) {
    }
    
    @IBAction func womensTapped(_ sender: Any) {
    }
    
    @IBAction func coedTapped(_ sender: Any) {
    }
}
