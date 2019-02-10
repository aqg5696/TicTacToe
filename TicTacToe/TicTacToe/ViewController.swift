//
//  ViewController.swift
//  TicTacToe
//
//  Created by Dothraki on 6/17/18.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1: [Int] = []
    var player2: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
var activePlayer:Int = 1
    @IBAction func wantClick(_ sender: Any) {
        let castButton:UIButton = sender as! UIButton
        print(castButton.tag)

        if (activePlayer == 1){
            castButton.setTitle("X", for: UIControlState.normal)
            castButton.setTitleColor(UIColor.white, for: UIControlState.normal)
            castButton.backgroundColor = UIColor.blue
            player1.append(castButton.tag)
            print(player1)
            activePlayer = 2
            
        }else{
            castButton.setTitle("O", for: UIControlState.normal)
            castButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
            castButton.backgroundColor = UIColor.white
            activePlayer = 1
            player2.append(castButton.tag)
            print(player2)
        }
        castButton.isEnabled = false
        findWinner()
        
    }
    
    func findWinner(){
        
        if player1.contains(1)&&player1.contains(2)&&player1.contains(3){
            print("Player 1 wins")
            let alert = UIAlertController(title: "Winner", message: "Player 1 wins", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
}



