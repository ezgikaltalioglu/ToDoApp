//
//  YeninotViewModel.swift
//  ToDoApp
//
//  Created by Ezgi Kaltalıoğlu on 14.08.2023.
//

import Foundation

class YeninotViewModel{
    
    var nrepo = TodoDaoRepository()
    
    func kaydet(not_kategori:String){
        nrepo.kaydet(not_kategori: not_kategori)
    }
    
}
