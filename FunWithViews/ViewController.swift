//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        score1.hidden = true
        score2.hidden = true
        score3.hidden = true
        score4.hidden = true
        score5.hidden = true
        score6.hidden = true
        
        
    }
    
    var counter = 1
    
    
    @IBAction func rollButtonTapped(sender: AnyObject) {
        randomDiceRoll()
        let score = randomDiceRoll()
        generateViews(score)
        generateScore(score)
        counter += 1
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func generateScore (value: Int){
        if (counter == 1){
            score1.hidden = false
            score1.text = "\(value)"
        }
        
        if (counter == 2){
            score2.hidden = false
            score2.text = "\(value)"
        }
        
        if (counter == 3){
            score3.hidden = false
            score3.text = "\(value)"
        }
        
        if (counter == 4){
            score4.hidden = false
            score4.text = "\(value)"
        }
        
        if (counter == 5){
            score5.hidden = false
            score5.text = "\(value)"
        }
        
        if (counter == 6){
            score6.hidden = false
            score6.text = "\(value)"
        }
        
    }
    
    func generateViews(value : Int) {
        if value == 1{
            
            view1.hidden = true
            view2.hidden = true
            view3.hidden = true
            view4.hidden = false
            view5.hidden = true
            view6.hidden = true
            view7.hidden = true
            
        }
            
        else if value == 2{
            
            view1.hidden = false
            view2.hidden = true
            view3.hidden = true
            view4.hidden = true
            view5.hidden = true
            view6.hidden = true
            view7.hidden = false
        }
            
        else if value == 3{
            
            view1.hidden = true
            view2.hidden = true
            view3.hidden = false
            view4.hidden = false
            view5.hidden = false
            view6.hidden = true
            view7.hidden = true
        }
            
        else if value == 4{
            
            view1.hidden = false
            view2.hidden = true
            view3.hidden = false
            view4.hidden = true
            view5.hidden = false
            view6.hidden = true
            view7.hidden = false
        }
            
        else if value == 5{
            
            view1.hidden = false
            view2.hidden = true
            view3.hidden = false
            view4.hidden = false
            view5.hidden = false
            view6.hidden = true
            view7.hidden = false
        }
            
        else if value == 6{
            
            view1.hidden = false
            view2.hidden = false
            view3.hidden = false
            view4.hidden = true
            view5.hidden = false
            view6.hidden = false
            view7.hidden = false
        }
    }
}
