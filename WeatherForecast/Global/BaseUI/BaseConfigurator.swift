//
//  BaseConfigurator.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

//import Foundation
//
//protocol BaseConfiguratorInterface {
//    associatedtype datatype
//    
//    func configure(viewController: UIViewController)
//}
//
//
//class BaseConfigurator {
//    
//    static let sharedInstance = LocationSearchConfigurator()
//    
//    private init() {}
//    
//    func configure(viewController: DisplayFlashCardViewController) {
//        let router = DisplayFlashCardRouter()
//        router.viewController = viewController
//        
//        let presenter = DisplayFlashCardPresenter()
//        presenter.output = viewController
//        
//        let interactor = DisplayFlashCardInteractor()
//        interactor.output = presenter
//        
//        viewController.output = interactor
//        viewController.router = router
//    }
//}
