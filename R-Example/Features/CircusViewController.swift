//
//  CircusController.swift
//  R-Example
//
//  Created by William Boles on 18/06/2021.
//

import UIKit

class CircusViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let icons: [UIImage?] = {
        var icons = [UIImage?]()
        
        icons.append(R.image.acrobaticBike())
        icons.append(R.image.balloonDog())
        icons.append(R.image.gumMachine())
        icons.append(R.image.monkey())
        icons.append(R.image.ticket())
        icons.append(R.image.magicBox())
        
        return icons
    }()
    
    // MARK: - ViewLifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = R.string.localizable.circusTitle()
        labelDescription.text = R.string.localizable.circusDescription()
        
        tableView.rowHeight = 120
        tableView.register(R.nib.circusTableViewCell)
    }
}

extension CircusViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension CircusViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let icon = icons[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.circusTableViewCell, for: indexPath) else {
            fatalError("Unable to dequeue cell")
        }
        cell.iconImageView.image = icon
        
        return cell
    }
}
