//
//  ViewController.swift
//  15039354_PreSchoolApp
//
//  Created by Administrator on 06/11/2016.
//  Copyright © 2016 AlisonGatt. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    //declare draggable view
    @IBOutlet weak var viewApples: UIView!
    @IBOutlet weak var viewPlate: UIImageView!
    @IBOutlet weak var lblQuest: UILabel!
    
   
    @IBOutlet weak var FlashStar: UIImageView!
    
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
    
    @IBOutlet weak var viewDraggable: UIView!
    @IBOutlet weak var viewNums: UIView!
    @IBOutlet weak var viewPlatesApple: UIView!
   
    @IBOutlet weak var viewSum: UIView!
   
    
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
        self.loadDesign()
     
        // Do any additional setup after loading the view, typically from a nib.
        //  lblValTwo.adjustsFontSizeToFitWidth = true
        //    lblValTwo.minimumScaleFactor = 0.2

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func loadDesign()
    {
        //generating random numbers for sum
        lblValOne.text = String(arc4random_uniform(4))
        lblValTwo.text = String(arc4random_uniform(4))
        self.viewAnswer.isHidden = true
        self.viewNums.isHidden = false
        self.viewPlatesApple.isHidden = false
        self.viewSum.isHidden = false
        viewPlate.isHidden = false
        lblQuest.textColor = UIColor.black

    }

    
    
    //try again button
    //switch views
    //regenerate random numbers
    @IBAction func btnTryAgain(_ sender: UIButton) {
        self.loadDesign()
     
        
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
            self.viewNums.isHidden = true
            self.viewPlatesApple.isHidden = true
            self.viewSum.isHidden = true
            viewPlate.isHidden = true

            self.viewAnswer.isHidden = false
            
            FlashStar.animationImages = [
                UIImage(named: "star_kids.png")!,
                UIImage(named: "starblank.png")!]
            
            
            FlashStar.animationDuration=1
            FlashStar.startAnimating()
            

        }
        else {
            //show view with succesful answer
            self.viewNums.isHidden = true
            self.viewPlatesApple.isHidden = true
            self.viewSum.isHidden = true
            viewPlate.isHidden = true
            
            self.viewAnswer.isHidden = false
            //flicker question mark for wrong answer
            lblQuest.textColor = UIColor.red
            
        }
    }


    
                
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
        //  let location = touch.location(in: self.view)
      
            
             //   let location = CGPoint(x: 200, y: 300)
            let location = touch.location(in: viewDraggable)
            
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

