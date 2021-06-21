//
//  Coordinator.swift
//  Stack
//
//  Created by William Boles on 20/06/2021.
//

import UIKit

public struct Coordinator {
    
    // MARK: - Init
    
    public init() { }
    
    // MARK: - Initial
    
    public func createInitialViewController() -> UIViewController {
        R.storyboard.main.circusViewController()!
    }
}
