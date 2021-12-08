//
//  ViewController.swift
//  TTTAss
//
//  Created by A Ab. on 02/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var player = 1
    var player1 = [Int]()
    var player2 = [Int]()
    var arr = [UIButton]()
    var winner = -1
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        winnerLabel.isHidden = true
    }
    
    @IBAction func reset(_ sender: UIButton) {
        for i in arr{
            i.backgroundColor = .lightGray
            i.isEnabled = true
        }
        player1.removeAll()
        player2.removeAll()
        player = 1
        winnerLabel.text = nil
        winner = -1
        winnerLabel.isHidden = true
    }
    

    @IBAction func BuSelect(_ sender: Any) {
      
        let buSelect = sender as! UIButton
        playGame(buSelect: buSelect)
    }
    

    func playGame(buSelect: UIButton){
       
        if (player == 1){
            buSelect.backgroundColor = .blue
            player1.append(buSelect.tag)
            arr.append(buSelect)
            player = 2
            
        }else{
            buSelect.backgroundColor = .red
            player2.append(buSelect.tag)
            arr.append(buSelect)
            player = 1
        }
        buSelect.isEnabled = false
        findWinner()
        
    }
    
    func findWinner(){
        winner = -1
        winnerLabel.isHidden = true
        winnerLabel.text = " "
        
        //row1
        if (player1.contains(1) && player1.contains(2) && player1.contains(3)){
                winner = 1
        }
        else if (player2.contains(1) && player2.contains(2) && player2.contains(3)){
                winner = 2
        }
        //row2
        else if (player1.contains(4) && player1.contains(5) && player1.contains(6)){
                winner = 1
        }
        else if (player2.contains(4) && player2.contains(5) && player2.contains(6)){
                winner = 2
        }
        //row3
        else if (player1.contains(7) && player1.contains(8) && player1.contains(9)){
                winner = 1
        }
        else if (player2.contains(7) && player2.contains(8) && player2.contains(9)){
                winner = 2
        }
        
        //col1
        else if (player1.contains(1) && player1.contains(4) && player1.contains(7)){
                winner = 1
        }
        else if (player2.contains(1) && player2.contains(4) && player2.contains(7)){
                winner = 2
        }
        //col2
        else if (player1.contains(2) && player1.contains(5) && player1.contains(8)){
                winner = 1
        }
        else if (player2.contains(2) && player2.contains(5) && player2.contains(8)){
                winner = 2
        }
        //col3
        else if (player1.contains(3) && player1.contains(6) && player1.contains(9)){
                winner = 1
        }
        else if (player2.contains(3) && player2.contains(6) && player2.contains(9)){
                winner = 2
        }
        
        //cross1
        else if (player1.contains(1) && player1.contains(5) && player1.contains(9)){
                winner = 1
        }
        else if (player2.contains(1) && player2.contains(5) && player2.contains(9)){
                winner = 2
        }
        //cross2
        else if (player1.contains(3) && player1.contains(5) && player1.contains(7)){
                winner = 1
        }
        else if (player2.contains(3) && player2.contains(5) && player2.contains(7)){
                winner = 2
        }
        
        if winner != -1 {
            if winner == 1{
                winnerLabel.text = " Player Blue Winn"
                winnerLabel.isHidden = false
              
            }else if winner == 2{
                winnerLabel.text = " Player Red Winn"
                winnerLabel.isHidden = false
               
            }else{
            winnerLabel.text = " No Winner"
            winnerLabel.isHidden = false
           
            }
        }
    }
    
}

