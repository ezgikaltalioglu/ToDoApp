//
//  TodoDaoRepository.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 14.08.2023.
//

import Foundation
import RxSwift

class TodoDaoRepository{
    
    var notlarListesi = BehaviorSubject<[Not]>(value: [Not]())
    
    
    func kaydet(not_kategori:String){
        
        print("Not Kaydet: \(not_kategori)")
    }
    
    
    func guncelle(not_id: Int, not_kategori: String){
        print("Not Güncelle: \(not_id) - \(not_kategori)")
    }
    
    func sil(not_id:Int){
        print("Not Sil: \(not_id)")
    }
    
    func arama(aramaKelimesi:String){
        print("Not ara: \(aramaKelimesi)")
    }
    
    func notlariYukle(){
        
        var liste = [Not]()
        
        let n1 = Not(not_id: 1, not_ad: "Ödev Yap")
        let n2 = Not(not_id: 2, not_ad: "Yemek Yap")
        let n3 = Not(not_id: 3, not_ad: "Doktor Randevusu")
        
        liste.append(n1)
        liste.append(n2)
        liste.append(n3)
        
        notlarListesi.onNext(liste)
    }
    
}
