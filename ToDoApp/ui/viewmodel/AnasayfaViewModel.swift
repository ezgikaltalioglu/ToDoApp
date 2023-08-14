//
//  AnasayfaViewModel.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 14.08.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    
    var nrepo = TodoDaoRepository()
    var notlarListesi = BehaviorSubject<[Not]>(value: [Not]())
    
    init() {
        notlarListesi = nrepo.notlarListesi
    }
    
    
    func sil(not_id:Int){
        nrepo.sil(not_id: not_id)
        notlariYukle() 
    }
    
    func arama(aramaKelimesi:String){
        nrepo.arama(aramaKelimesi: aramaKelimesi)
    }
    
    func notlariYukle(){
        
        nrepo.notlariYukle()
    }
}
