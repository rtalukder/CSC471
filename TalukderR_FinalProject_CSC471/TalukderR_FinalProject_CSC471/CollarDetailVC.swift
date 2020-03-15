//
//  CollarDetailVC.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class CollarDetailVC: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var collarImage: UIImageView!
    
    var collar: TypesCollars?
    
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let c = collar {
            titleLabel.text = c.description
            descriptionLabel.text = c.suitableTies
            collarImage.image = UIImage(named: c.imageFilePath)
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
