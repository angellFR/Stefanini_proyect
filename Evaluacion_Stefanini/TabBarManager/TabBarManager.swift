//
//  TabBarManager.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 04/07/23.
//

import Foundation
import UIKit

protocol TabBarViewProtocol {
    
    var tabIcon:UIImage { get }
    var tabTitle:String { get }
    
    func configuredViewController() -> UIViewController
}
