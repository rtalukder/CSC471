//
//  ClosetDetailVC.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ClosetDetailVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var shirtObjectPicture: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var neckSizeLebel: UILabel!
    @IBOutlet weak var sleeveLengthLabel: UILabel!
    @IBOutlet weak var fitLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var fabricTypeLabel: UILabel!
    @IBOutlet weak var collarTypeLabel: UILabel!
    
    var shirtObject: Shirt?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let s = shirtObject {
            titleLabel.text = s.nickName
            nickNameLabel.text = s.nickName
            brandLabel.text = s.brandField
            neckSizeLebel.text = s.neckSizeField
            sleeveLengthLabel.text = s.sleeveLengthField
            fitLabel.text = s.fitField
            colorLabel.text = s.colorField
            fabricTypeLabel.text = s.fabricField
            collarTypeLabel.text = s.collarField
            shirtObjectPicture.image = UIImage(_ s.shirtPicture)
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
