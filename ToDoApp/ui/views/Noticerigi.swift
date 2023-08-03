//
//  Ucuncusayfa.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 1.08.2023.
//

import UIKit

class Noticerigi: UIViewController {
    
    @IBOutlet weak var tfNot: UITextField!
    
    var not:Not?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let n = not{
            tfNot.text = n.not_ad
        }
    }
    
    @IBAction func butonGuncelle(_ sender: Any) {
        
        if let nk = tfNot.text, let n = not{
         
            guncelle(not_id: n.not_id!, not_kategori: nk)
        }
    }
    
    func guncelle(not_id: Int, not_kategori: String){
        print("Not Güncelle: \(not_id) - \(not_kategori)")
    }
    
}
