//
//  Team2ViewController.swift
//  Final Project
//
//  Created by Elias Mobrin on 5/2/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class Team2ViewController: UIViewController {
    
    @IBOutlet weak var teamGoal: UILabel!
    @IBOutlet weak var teamShot: UILabel!
    @IBOutlet weak var teamCorner: UILabel!
    @IBOutlet weak var teamTackle: UILabel!
    @IBOutlet weak var teamFoul: UILabel!
    @IBOutlet weak var stepperInfo: UIStepper!
    @IBOutlet weak var sliderInfo: UISlider!
    @IBOutlet weak var teamPossession: UILabel!
    
    
    @IBAction func stepperAction(_ sender: Any) {
        (parent as! ManagementTabBarController).goals1 = Int(stepperInfo.value)
        teamGoal.text = String((parent as! ManagementTabBarController).goals1)
    }
    
    @IBAction func plusShot(_ sender: Any) {
        (parent as! ManagementTabBarController).shots1+=1
        teamShot.text = String((parent as! ManagementTabBarController).shots1)
    }
    
    
    @IBAction func minusShot(_ sender: Any) {
        (parent as! ManagementTabBarController).shots1-=1
               teamShot.text = String((parent as! ManagementTabBarController).shots1)
    }
    
    
    @IBAction func plusCorner(_ sender: Any) {
        (parent as! ManagementTabBarController).corners1+=1
        teamCorner.text = String((parent as! ManagementTabBarController).corners1)
    }
    
    
    @IBAction func minusCorner(_ sender: Any) {
        (parent as! ManagementTabBarController).corners1-=1
        teamCorner.text = String((parent as! ManagementTabBarController).corners1)
    }
    
    
    @IBAction func plusTackle(_ sender: Any) {
        (parent as! ManagementTabBarController).tackles1+=1
        teamTackle.text = String((parent as! ManagementTabBarController).tackles1)
    }
    
    
    @IBAction func minusTackle(_ sender: Any) {
        (parent as! ManagementTabBarController).tackles1-=1
               teamTackle.text = String((parent as! ManagementTabBarController).tackles1)
    }
    
    
    @IBAction func plusFoul(_ sender: Any) {
        (parent as! ManagementTabBarController).fouls1+=1
               teamFoul.text = String((parent as! ManagementTabBarController).fouls1)
    }
    
    
    @IBAction func minusFoul(_ sender: Any) {
        (parent as! ManagementTabBarController).fouls1-=1
        teamFoul.text = String((parent as! ManagementTabBarController).fouls1)
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        (parent as! ManagementTabBarController).possession = Int(sliderInfo.value)
        teamPossession.text = String(sliderInfo.value) + "%"
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
