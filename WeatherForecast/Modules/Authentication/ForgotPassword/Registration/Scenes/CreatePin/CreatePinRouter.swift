//
//  CreatePinRouter.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 8/8/18.
//  Copyright (c) 2018 ItsaraChai. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol CreatePinRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CreatePinDataPassing
{
  var dataStore: CreatePinDataStore? { get }
}

class CreatePinRouter: NSObject, CreatePinRoutingLogic, CreatePinDataPassing
{
  weak var viewController: CreatePinViewController?
  var dataStore: CreatePinDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: CreatePinViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: CreatePinDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
