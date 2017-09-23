//
//  LegueVC.swift
//  app-swoosh
//
//  Created by AbdelRahman Aref on 9/22/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import UIKit
//model that store data and pass it to other view controllers
class LegueVC: UIViewController {
    
    //implicitly unwrapped optional because we don't want this code to run unless there is a player
    var player:Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        //when view did load, it will create a new player
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        //leagueType is something to let us know that mens are selected
        player.desiredLegue = leagueType
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player // pass the player from this screen to the player in SlillVC screen
            
        }
    }
    
}
