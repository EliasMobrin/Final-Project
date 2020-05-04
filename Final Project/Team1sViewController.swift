//
//  Team1sViewController.swift
//  Final Project
//
//  Created by Elias Mobrin on 5/3/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class Team1sViewController: UIViewController {
    
    
    @IBOutlet weak var teamGoal: UILabel!
    @IBOutlet weak var teamShot: UILabel!
    @IBOutlet weak var teamCorner: UILabel!
    @IBOutlet weak var teamTackle: UILabel!
    @IBOutlet weak var teamFoul: UILabel!
    @IBOutlet weak var teamPossession: UILabel!
    @IBOutlet weak var stepperInfo: UIStepper!

    
    

    @IBAction func stepperAction(_ sender: Any) {
        (parent as! ManagementTabBarController).goals2 = Int(stepperInfo.value)
        teamGoal.text = String((parent as! ManagementTabBarController).goals2)
    }
    
    @IBAction func plusShot(_ sender: Any) {
        (parent as! ManagementTabBarController).shots2+=1
        teamShot.text = String((parent as! ManagementTabBarController).shots2)
    }
    
    
    @IBAction func minusShot(_ sender: Any) {
        (parent as! ManagementTabBarController).shots2-=1
               teamShot.text = String((parent as! ManagementTabBarController).shots2)
    }
    
    
    @IBAction func plusCorner(_ sender: Any) {
        (parent as! ManagementTabBarController).corners2+=1
               teamCorner.text = String((parent as! ManagementTabBarController).corners2)
    }
    
    
   
   
    @IBAction func minusCorner(_ sender: Any) {
        (parent as! ManagementTabBarController).corners2-=1
              teamCorner.text = String((parent as! ManagementTabBarController).corners2)
    }
    
    
    
    
    @IBAction func plusTackle(_ sender: Any) {
        (parent as! ManagementTabBarController).tackles2+=1
        teamTackle.text = String((parent as! ManagementTabBarController).tackles2)
    }
    
    
    @IBAction func minusTackle(_ sender: Any) {
        (parent as! ManagementTabBarController).tackles2-=1
        teamTackle.text = String((parent as! ManagementTabBarController).tackles2)
    }
    
    
    @IBAction func plusFoul(_ sender: Any) {
        (parent as! ManagementTabBarController).fouls2+=1
        teamFoul.text = String((parent as! ManagementTabBarController).fouls2)
    }
    
    
    @IBAction func minusFoul(_ sender: Any) {
        (parent as! ManagementTabBarController).fouls2-=1
        teamFoul.text = String((parent as! ManagementTabBarController).fouls2)
    }
    
    
    override func viewWillAppear(_ animated: Bool){
        
        teamPossession.text = String(100 - (parent as! ManagementTabBarController).possession) + "%"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
