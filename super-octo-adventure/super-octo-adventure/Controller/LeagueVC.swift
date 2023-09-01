//
//  LeagueVC.swift
//  super-octo-adventure
//
//  Created by Main User on 2023-08-03.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
//    outlets for reference
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextBtn.isUserInteractionEnabled = false
        // Do any additional setup after loading the view.
//  anything that i want to b played right away or funcs to b called right away
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
//    programatic segue
//    i wrote this action and connected the view controller to the other and tied it to the segue by writing the name on the indentifier on the storyboard
    
    @IBAction func mensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague (leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isUserInteractionEnabled = true
    }
    
}
//every optional in the class i have to initialize inside the viewdidload.
//
