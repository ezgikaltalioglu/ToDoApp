//
//  NoticerigiViewModel.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 14.08.2023.
//

import Foundation

class NoticerigiViewModel{
    
    var nrepo = TodoDaoRepository()
    
    func guncelle(not_id: Int, not_kategori: String){
        nrepo.guncelle(not_id: not_id, not_kategori: not_kategori)
    }
}
