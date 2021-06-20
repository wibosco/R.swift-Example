//
//  StackViewController.swift
//  Stack
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var imageViewA: UIImageView!
    @IBOutlet weak var imageViewB: UIImageView!
    @IBOutlet weak var imageViewC: UIImageView!
    @IBOutlet weak var imageViewD: UIImageView!
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = R.string.localizable.stackTitle()
        labelDescription.text = R.string.localizable.stackDescription()
        
        imageViewA.image = R.image.animalVaccine()
        imageViewB.image = R.image.bacteria()
        imageViewC.image = R.image.dnaStructure()
        imageViewD.image = R.image.bandAid()
    }
}
