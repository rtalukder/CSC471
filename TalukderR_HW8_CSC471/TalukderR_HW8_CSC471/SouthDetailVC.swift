//
//  SouthDetailVC.swift
//  TalukderR_HW8_CSC471
//
//  Created by Raquib Talukder on 3/16/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class SouthDetailVC: UIViewController {

    @IBOutlet weak var stateTitleLabel: UILabel!
    @IBOutlet weak var stateFlagImage: UIImageView!
    @IBOutlet weak var stateSubRegion: UILabel!
    @IBOutlet weak var stateCapital: UILabel!
    @IBOutlet weak var stateHoodDate: UILabel!
    
    var stateObject: SouthRegionStates?
    
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let state = stateObject {
            stateTitleLabel.text = state.stateName
            stateFlagImage.image = UIImage(named: state.stateImageFilePath)
            stateSubRegion.text = state.stateSubRegion
            stateCapital.text = state.stateCapital
            stateHoodDate.text = state.stateHoodDate
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
