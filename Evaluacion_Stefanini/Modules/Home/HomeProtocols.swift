//
//  HomeProtocols.swift
//  Evaluacion_Stefanini
//
//  Created Administrator on 04/07/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol HomeWireframeProtocol: AnyObject {
 

}
//MARK: Presenter -
protocol HomePresenterProtocol: AnyObject {
    func infoEmail(data: Results)
    func getListEmail()
    
}

//MARK: Interactor -
protocol HomeInteractorProtocol: AnyObject {
    func getListEmail()

  var presenter: HomePresenterProtocol?  { get set }
}

//MARK: View -
protocol HomeViewProtocol: AnyObject {
    func infoEmail(data: Results)
  var presenter: HomePresenterProtocol?  { get set }
}
