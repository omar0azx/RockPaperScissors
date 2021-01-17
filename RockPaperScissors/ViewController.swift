//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by omar alzhrani on 19/08/1441 AH.
//  Copyright © 1441 omar alzhrani. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerChoiceLBL: UILabel!
    @IBOutlet weak var playerPointLBL: UILabel!
    @IBOutlet weak var computerPointLBL: UILabel!
    
    var savedPlayerPoint = 0
    var savedComputerPoint = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var playerBTNs: UIButton!
    @IBAction func playerAct(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            play(with: "👊🏻")
        case 2:
            play(with: "🖐🏻")
        case 3:
            play(with: "✌🏻")
        default:
            print("Error")
        }
    }
    
    func play(with choice: String) {
        let computerChoice = ["👊🏻", "🖐🏻" , "✌🏻"].shuffled()[0]
        computerChoiceLBL.text = computerChoice
        if choice == computerChoice {
            view.backgroundColor = #colorLiteral(red: 0.07254011184, green: 0.7904572487, blue: 1, alpha: 1)
            print("تعادل") // تشمل كل حالات التعادل
        } else if choice == "👊🏻" && computerChoice == "🖐🏻" { computerWin() }
        else if choice == "✌🏻" && computerChoice == "👊🏻" { computerWin() }
        else if choice == "🖐🏻" && computerChoice == "✌🏻" { computerWin() }
        else if choice == "👊🏻" && computerChoice == "✌🏻" { playerWin() }
        else if choice == "🖐🏻" && computerChoice == "👊🏻" { playerWin() }
        else if choice == "✌🏻" && computerChoice == "🖐🏻" { playerWin() }
    }
    func playerWin() {
        savedPlayerPoint += 1
        playerPointLBL.text = String(savedPlayerPoint)
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        print("لقد فاز اللاعب")
    }
    func computerWin() {
        savedComputerPoint += 1
        computerPointLBL.text = String(savedComputerPoint)
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        print("لقد فاز الجهاز")
    }
}

/*
 في ثلاث حالات للتعادل
 ✌🏻 = ✌🏻
 🖐🏻 = 🖐🏻
 👊🏻 = 👊🏻
 حالات فوز الكمبيوتر
 🖐🏻 > 👊🏻
 ✌🏻 > 🖐🏻
 👊🏻 > ✌🏻
 حالات فوز اللاعب
 👊🏻 < 🖐🏻
 🖐🏻 < ✌🏻
 ✌🏻 < 👊🏻
 */
