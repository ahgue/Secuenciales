//
//  ViewController.swift
//  Secuenciales
//
//  Created by roberto figueroa on 13/09/16.
//  Copyright © 2016 Edgar Alejandro Figueroa Ahgue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBAction func searchGroups(_ sender: UIButton) {
        
        let secuence = textView.text.characters.split(separator: " ").map(String.init)
        print("the secuence is \(secuence)")
        //let num = secuence.count
        var z = 0
      
        for index in 0...secuence.count-2 {
            
            let number1 = secuence[index]
            let number2 = secuence[index+1]
            //aqui saco el número que esta en el indice
            let s1 :Int? = Int(number1)
            let s2 :Int? = Int(number2)
            if s1! == (s2!-1) {
                z = z+1
            }
            if s1! != (s2!-1) && z != 0 {
                print("hay un grupo de \(s1!-z) hasta \(s1!)")
                z = 0
                
            }
            if index == secuence.count-2 {
                print("hay un grupo de \(s2!-z) hasta \(s2!)")
            }
        }
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

