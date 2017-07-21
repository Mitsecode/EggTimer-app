//
//  ViewController.swift
//  Menu Barss
//
//  Created by Mit Sengupta on 13/7/17.
//  Copyright © 2017 Mit Sengupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
      var start = 210
      var timer = Timer()
    
   
        
    
    @IBOutlet weak var score: UILabel!
    
 
  
    
    func go() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
       
        
    }
    
    func processTimer() {
        start = start - 1
        
        score.text = String(start)
        print(start)
        
        if start == 0 {
            timer.invalidate()
        }
        
    }
   
   
    
    
    @IBAction func minus(_ sender: Any) {
        start = start - 10
        score.text = String(start)
        print(start)
       
    }
    
    
    @IBAction func plus(_ sender: Any) {
        start = start + 10
        score.text = String(start)
        print(start)
    }
    
    

    @IBAction func pressed(_ sender: Any) {
        
        print("Paused!")
        timer.invalidate()
    }
    
    @IBAction func reset(_ sender: Any) {
       start = 210
        score.text = String(start)
        
        
    }
  
    
    
    @IBAction func play(_ sender: Any) {
         go()
        
    
}
    
    
    
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

