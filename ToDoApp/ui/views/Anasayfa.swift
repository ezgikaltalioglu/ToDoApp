//
//  ViewController.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 1.08.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func butonDetay(_ sender: Any) {
        let not = Not(not_id: 1, not_ad: "Yemek")
        performSegue(withIdentifier: "toDetay", sender: not)
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetay"{
            
            if let not = sender as? Not{
                let gidilecekVC = segue.destination as! Noticerigi
                gidilecekVC.not = not
            }
        }
    }
}

