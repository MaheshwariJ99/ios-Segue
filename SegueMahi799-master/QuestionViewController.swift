//
//  QuestionViewController.swift
//  task4
//
//  Created by MAHESHWARI JUTTU on 29/4/19.
//  Copyright © 2019 mahi. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    let questions = ["what is 2x200 ? ","Fill R_B_T ?","what is 2(5-4)?","Fill CO_P_T_R?","what is 5/4(2-3)?","Fill HA__Y?"]
    let answers = [["400","4000","440","404"],["RABIT","RIBAT","RUBOT","REBOT"],["2","6","7","10"],["COMPUTER","COUPTAR","CODING","COMMING"],["UNKNOWN","8","0","INFINITY"],["HAPPY","HARRY","HASSY","HACKY"]]

    //CREATING VARIABLES
    var currentquestion = 0
    var rightanswer:UInt32 = 0
    
    //labels
    
    @IBOutlet weak var lbl1: UILabel!
    
    
    
    //Buttons
    
    @IBAction func action(_ sender: AnyObject) {
        if (sender.tag == Int(rightanswer))
        {
            //print("you got it")
        }
        else{
            //print("wrong")
        }
        if (currentquestion != questions.count)
        {
            nextQuestion()
        }
        else{
            performSegue(withIdentifier: "RSeges", sender: self)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        nextQuestion()
        
    }
    //Function to dsiply nextquestion
    
    func nextQuestion(){
        lbl1.text = questions[currentquestion]
        rightanswer = arc4random_uniform(4)+1
        
        //creating a button
        
        var button:UIButton = UIButton()
        
        var a = 1
        for i in 1...4
        {
            
            //button
            
            button = view.viewWithTag(i) as! UIButton
            if (i == Int(rightanswer))
            {
                button.setTitle(answers[currentquestion][0], for: .normal)
            }
            else {
                button.setTitle(answers[currentquestion][a], for: .normal)
                a = 2
            }
        }
        currentquestion += 1
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
