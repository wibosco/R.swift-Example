//
//  EducationViewController.swift
//  Education
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class EducationViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var imageViewA: UIImageView!
    @IBOutlet weak var imageViewB: UIImageView!
    @IBOutlet weak var imageViewC: UIImageView!
    @IBOutlet weak var imageViewD: UIImageView!
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = R.string.localizable.educationTitle()
        labelDescription.text = R.string.localizable.educationDescription()
        
        imageViewA.image = R.image.abacus()
        imageViewB.image = R.image.alarmClock()
        imageViewC.image = R.image.compass()
        imageViewD.image = R.image.maths()
    }
}

