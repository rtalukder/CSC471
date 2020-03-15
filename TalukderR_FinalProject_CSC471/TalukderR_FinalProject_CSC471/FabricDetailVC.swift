//
//  FabricDetailVC.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class FabricDetailVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fabricStyleImage: UIImageView!
    @IBOutlet weak var fabricDescription: UILabel!
    
    var fabricType: TypesFabrics?
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let f = fabricType {
            titleLabel.text = f.fabricType
            fabricStyleImage.image = UIImage(named: f.imageFilePath)
            fabricDescription.text = f.fabricDescription
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
