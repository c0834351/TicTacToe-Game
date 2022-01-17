//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    enum WhoseTuren{
        case Nought
        case Cross
    }
    
    var currentTurn = WhoseTuren.Cross
    var firstTurn = WhoseTuren.Cross
    
    
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        addToGame(sender)
        
    }
    
    func addToGame(_ sender: UIButton){
        if(sender.image(for: .normal)==nil){
            if(currentTurn == WhoseTuren.Nought){
                sender.setImage(UIImage(named: "nought.png"), for: [])
                currentTurn = WhoseTuren.Cross
                sender.transform = CGAffineTransform(translationX: 0, y: -100)
                UIView.animate(withDuration: 0.5) {
                    sender.transform = CGAffineTransform.identity
                }
            }
            else{
                sender.setImage(UIImage(named: "cross.png"), for: [])
                currentTurn=WhoseTuren.Nought
                sender.transform = CGAffineTransform(translationX: -100, y: 0)
                UIView.animate(withDuration: 1){
                    sender.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                }
        }
            sender.isEnabled=false
        
    }
    
    
    }
}

