//
//  AlunoAPI.swift
//  Agenda
//
//  Created by Fernanda Andreia Nascimento on 28/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit
import Alamofire

class AlunoAPI: NSObject {

    func salvaAlunosNoServidor(parametros: Array<Dictionary<String, String>>) {
        guard let url = URL (string: "http://localhost:8080/api/aluno/lista") else { return }
        var requisicao = URLRequest(url: url)
        requisicao.httpMethod = "PUT"
        
        let json = try! JSONSerialization.data(withJSONObject: parametros, options: [])
        
        requisicao.httpBody = json
        requisicao.addValue("aplicacao/json", forHTTPHeaderField: "Content-type")
      
        Alamofire.request(requisicao)
    }
    
}
