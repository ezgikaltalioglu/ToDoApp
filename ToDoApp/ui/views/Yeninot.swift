//
//  Ikincisayfa.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 1.08.2023.
//

import UIKit

class Yeninot: UIViewController {
    
    
    @IBOutlet weak var tfNot: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }
    

    @IBAction func butonKaydet(_ sender: Any) {
        
        if let nk = tfNot.text{
         
            kaydet(not_kategori: nk)
        }
    }
    
    func kaydet(not_kategori:String){
        
        print("Not Kaydet: \(not_kategori)")
    }

}
