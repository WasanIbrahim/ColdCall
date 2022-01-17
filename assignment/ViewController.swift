//
//  ViewController.swift
//  assignment
//
//  Created by Wa ibra. on 22/02/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var namesLabel: UILabel!
    
    @IBOutlet weak var numbersLabel: UILabel!
    
   
    
    let Names = ["Wasan","Shuaa","Rodrigo","Ibrahim","Ashish"] //names changing in label
    let Numbers = [1,2,3,4,5]
//    let RedNumbers
    var currentName = 0
    
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        //func to change names in label randomly
        
        
        if currentName < Names.count - 1 {
            currentName = Int.random(in: 0..<5) //picking a random name from the  array
            checkNumber() // func to check the number and assign its color
            namesLabel.text = Names[currentName] // printing the random name in screen

            }
            else{
                currentName = 0
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func checkNumber (){
        
        let number = Int.random(in: 1...5)
        numbersLabel.text = String(number)
            if number == 1 || number == 2 {
                numbersLabel.textColor = UIColor.red
                
            } else if number == 3 || number == 4 {
                numbersLabel.textColor = UIColor.orange
            }else
            { numbersLabel.textColor = UIColor.green}
                
                
            }
}
        
    



