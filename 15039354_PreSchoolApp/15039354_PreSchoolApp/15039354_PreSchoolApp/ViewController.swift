//
//  ViewController.swift
//  15039354_PreSchoolApp
//
//  Created by Administrator on 06/11/2016.
//  Copyright © 2016 AlisonGatt. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    
    //declare draggable view
    @IBOutlet weak var viewApples: UIView!
    @IBOutlet weak var viewPlate: UIImageView!
    
   
    
    //draggable Apples
    @IBOutlet weak var imgApple1: UIImageView!
    @IBOutlet weak var imgApple2: UIImageView!
    @IBOutlet weak var imgApple3: UIImageView!
    @IBOutlet weak var imgApple4: UIImageView!
    @IBOutlet weak var imgApple5: UIImageView!
    @IBOutlet weak var imgApple6: UIImageView!
    @IBOutlet weak var imgApple7: UIImageView!
    @IBOutlet weak var imgApple8: UIImageView!
    @IBOutlet weak var imgApple9: UIImageView!
    
    
    @IBOutlet weak var lblQuest: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
  //  var ImageList = UIImage []()
    
    @IBOutlet var viewMain: UIView!
    
    //declare sum labels
    @IBOutlet weak var lblValOne: UILabel!
    @IBOutlet weak var lblValTwo: UILabel!
    
    @IBOutlet var viewAnswer: UIView!
    
    //declare answer labels
    
    @IBOutlet weak var lblValTwoAns: UILabel!
    @IBOutlet weak var lblValOneAns: UILabel!
    
    @IBOutlet weak var lblAnswer: UILabel!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //generating random numbers for sum
        lblValOne.text = String(arc4random_uniform(4))
        lblValTwo.text = String(arc4random_uniform(4))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //try again button
    //switch views
    //regenerate random numbers
    @IBAction func btnTryAgain(_ sender: UIButton) {
        
        self.viewAnswer.isHidden = true
        self.loadView()
        
    }
    
    //Buttons Answer Clicks
    @IBAction func btnZero(_ sender: UIButton) {
        
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)
    }

    @IBAction func btnOne(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnFive(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnSeven(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnEight(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }
    
    @IBAction func btnNine(_ sender: UIButton) {
        let input = Int(sender.currentTitle!)
        checkSum(userInput: input!)

    }

    
    @IBAction func checkSum(userInput : Int)
    {
        
        let valOne = Int(lblValOne.text!)
        let valTwo = Int(lblValTwo.text!)
        
        let correctAns = Int(valOne! + valTwo!)
        
        
        if ( Int(correctAns) == Int(userInput)){
            
            lblValOneAns.text = lblValOne.text
            lblValTwoAns.text = lblValTwo.text
            lblAnswer.text = String(correctAns)

            
            //show view with succesful answer
            self.viewAnswer.isHidden = false
            
            
        }
        else {
            //flicker question mark for wrong answer
            lblQuest.textColor = UIColor.red
            lblQuest.isHidden = true
            lblQuest.isHidden = false
        }
    }
    
    
                
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
        //  let location = touch.location(in: self.view)
      
            
             //   let location = CGPoint(x: 200, y: 300)
            let location = touch.location(in: viewPlate)
            
            if imgApple1.frame.contains(location){
                imgApple1.center = location
            }
            else if imgApple2.frame.contains(location){
                imgApple2.center = location
            }
            else if imgApple3.frame.contains(location){
                imgApple3.center = location
            }
            else if imgApple4.frame.contains(location){
                imgApple4.center = location
            }
            else if imgApple5.frame.contains(location){
                imgApple5.center = location
            }
            else if imgApple6.frame.contains(location){
                imgApple6.center = location
            }
            else if imgApple7.frame.contains(location){
                imgApple7.center = location
            }
            else if imgApple8.frame.contains(location){
                imgApple8.center = location
            }
            else if imgApple9.frame.contains(location){
                imgApple9.center = location
            }
        }
    }
}

