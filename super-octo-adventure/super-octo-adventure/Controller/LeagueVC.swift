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
//        if i initialize a var here it will change everytime but if i do it outside the val will remain
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        prepare for segue is always called before viewdidload (on the destination viewcontroller)
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
//  this is how we update the player from skillVC
// is the segue <- segue.destinantion -> is the view controller
            
        }
//        if its overwriten means is gonna b called by the view controller itself
//        this func is to pass data to different view controllers
    }
}
//every optional in the class i have to initialize inside the viewdidload.
//
