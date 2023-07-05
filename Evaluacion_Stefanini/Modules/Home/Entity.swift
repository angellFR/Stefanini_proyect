//
//  Entity.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 04/07/23.
//

import Foundation
struct Results: Decodable{
    let results: [email]?
}

struct email: Decodable {
    let name: String
    let detail: String
    let hour: String
}
