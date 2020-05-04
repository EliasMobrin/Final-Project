//
//  SummaryViewController.swift
//  Final Project
//
//  Created by Elias Mobrin on 5/2/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    
    @IBOutlet weak var mostShot: UILabel!
    @IBOutlet weak var mostCorner: UILabel!
    @IBOutlet weak var mostTackle: UILabel!
    @IBOutlet weak var mostFoul: UILabel!
    @IBOutlet weak var currentWin: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var imageInfo: UIImageView!
    @IBOutlet weak var segmentInfo: UISegmentedControl!
    
    
    @IBAction func segmentChange(_ sender: Any) {
        if segmentInfo.selectedSegmentIndex == 0 {
            imageInfo.isHidden = true
        } else {
            imageInfo.isHidden = false
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool){
        
        if  (parent as! ManagementTabBarController).shots1 >  (parent as! ManagementTabBarController).shots2
        {
            mostShot.text = "Team 1!"
        }
        else
        {
            mostShot.text = "Team 2!"
        }
        
        
        if  (parent as! ManagementTabBarController).shots1 ==  (parent as! ManagementTabBarController).shots2
        {
            mostShot.text = "Equal!"
        }
        
        if  (parent as! ManagementTabBarController).corners1 >  (parent as! ManagementTabBarController).corners2
        {
            mostCorner.text = "Team 1!"
        }
        else
        {
            mostCorner.text = "Team 2!"
        }
        
        if  (parent as! ManagementTabBarController).corners1 ==  (parent as! ManagementTabBarController).corners2
               {
                   mostCorner.text = "Equal!"
               }
        
        
        if  (parent as! ManagementTabBarController).tackles1 >  (parent as! ManagementTabBarController).tackles2
        {
            mostTackle.text = "Team 1!"
        }
        else
        {
            mostTackle.text = "Team 2!"
        }
        
        if  (parent as! ManagementTabBarController).tackles1 ==  (parent as! ManagementTabBarController).tackles2
        {
            mostTackle.text = "Equal!"
        }
        
        if  (parent as! ManagementTabBarController).fouls1 >  (parent as! ManagementTabBarController).fouls2
        {
            mostFoul.text = "Team 1!"
        }
        else
        {
            mostFoul.text = "Team 2!"
        }
        
        if  (parent as! ManagementTabBarController).fouls1 ==  (parent as! ManagementTabBarController).fouls2
        {
            mostFoul.text = "Equal!"
        }
        
        if  (parent as! ManagementTabBarController).goals1 >  (parent as! ManagementTabBarController).goals2
        {
            currentWin.text = "Team 1!"
        }
        else
        {
            currentWin.text = "Team 2!"
        }
        
        if  (parent as! ManagementTabBarController).goals1 ==  (parent as! ManagementTabBarController).goals2
        {
            currentWin.text = "Draw!"
        }
        
    }
    
    @IBAction func foundPinch(_ sender: Any) {
        outputLabel.text = "Thanks for using this app!"
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
