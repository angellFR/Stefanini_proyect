//
//  SpamMessagePresenter.swift
//  Evaluacion_Stefanini
//
//  Created Administrator on 04/07/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class SpamMessagePresenter {
    //MARK: - Protocol Properties
    weak private var view: SpamMessageViewProtocol?
    var interactor: SpamMessageInteractorProtocol?
    private let router: SpamMessageWireframeProtocol

    //MARK: - Life Cycle
    init(interface: SpamMessageViewProtocol, interactor: SpamMessageInteractorProtocol?, router: SpamMessageWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - Presenter Methods
extension SpamMessagePresenter: SpamMessagePresenterProtocol {
    
}

//MARK: - Private functions
extension SpamMessagePresenter {
    
}
