//
//  MedicalViewController.swift
//  Medical
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class MedicalViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let icons: [UIImage?] = {
        var icons = [UIImage?]()
        
        icons.append(R.image.animalVaccine())
        icons.append(R.image.chromosome())
        icons.append(R.image.hospital())
        icons.append(R.image.thermometer())
        icons.append(R.image.virus())
        icons.append(R.image.injection())
        icons.append(R.image.bandAid())
        icons.append(R.image.dosage())
        icons.append(R.image.chemotherapy())
        icons.append(R.image.bacteria())
        icons.append(R.image.bloodTest())
        icons.append(R.image.dnaStructure())
        icons.append(R.image.doctor())
        icons.append(R.image.eyeGlasses())
        icons.append(R.image.experiment())
        icons.append(R.image.faceMask())
        icons.append(R.image.stethoscope())
        icons.append(R.image.rubberGloves())
        
        return icons
    }()
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(R.nib.medicalCollectionViewCell)
        collectionView.register(R.nib.medicalHeaderCollectionReusableView, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader)
    }
}

extension MedicalViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let icon = icons[indexPath.item]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.medicalCollectionViewCell, for: indexPath) else {
            fatalError("Unable to dequeue cell")
        }
        cell.iconImageView.image = icon
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: R.reuseIdentifier.medicalHeaderCollectionReusableView, for: indexPath) else {
            fatalError("Expected header")
        }
        headerView.labelTitle.text = R.string.localizable.medicalTitle()
        headerView.labelDescription.text = R.string.localizable.medicalDescription()
        
        return headerView
    }
}

extension MedicalViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        CGSize(width: collectionView.bounds.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.bounds.width - 12.0)/3.0
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        4
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        4
    }
}
