//
//  ViewController.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 1.08.2023.
//

import UIKit

class Anasayfa: UIViewController {
    
    
    @IBOutlet weak var notTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var notlarListesi = [Not]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        notTableView.dataSource = self
        notTableView.delegate = self
        
        let n1 = Not(not_id: 1, not_ad: "Ödev Yap")
        let n2 = Not(not_id: 2, not_ad: "Yemek Yap")
        let n3 = Not(not_id: 3, not_ad: "Doktor Randevusu")
        notlarListesi.append(n1)
        notlarListesi.append(n2)
        notlarListesi.append(n3)
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

extension Anasayfa: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Not Ara: \(searchText)")
    }
}

extension Anasayfa: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        notlarListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let not = notlarListesi[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "notHucre") as! NotHucre
        hucre.labelNot.text = not.not_ad
        
        return hucre
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
         let not = notlarListesi[indexPath.row]
         performSegue(withIdentifier: "toDetay", sender: not)
    }
    
    
    //Sil actionu çıkartma:
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){_,_,_ in
            let not = self.notlarListesi[indexPath.row]
            
            
            //alert ekleme
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(not.not_ad!) Silinsin Mi?", preferredStyle: .alert)
            
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ action in
                print("İptal Edildi!")
            }
            alert.addAction(iptalAction)
            
            
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                
                print("Notu Sil: \(not.not_id!)")
            }
            alert.addAction(evetAction)
            
            
            
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}
