//
//  AddItemViewController.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/13/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet weak var shirtPicture: UIImageView!

    @IBOutlet weak var brandField: UITextField!
    @IBOutlet weak var neckSizeField: UITextField!
    @IBOutlet weak var sleeveLengthField: UITextField!
    @IBOutlet weak var fitField: UITextField!
    @IBOutlet weak var colorField: UITextField!
    @IBOutlet weak var fabricField: UITextField!
    @IBOutlet weak var collarField: UITextField!
    
    let brandPicker = UIPickerView()
    let neckSizePicker = UIPickerView()
    let sleeveLengthSizePicker = UIPickerView()
    let fitPicker = UIPickerView()
    let colorPicker = UIPickerView()
    let fabricPicker = UIPickerView()
    let collarPicker = UIPickerView()
    let imagePicker = UIImagePickerController()
    
    var imagePickerController: UIImagePickerController?
    var defaultImageUrl: URL?

    // Adding and Removing Functionality implmentation was adapted from:
    // https://github.com/davidthorn/xcode-projects/blob/master/ImageSelectionApplication/ImageSelectionApplication/ViewController.swift
    //
    
    internal var selectedImage: UIImage? {
        get {
            return self.shirtPicture.image
        }
        
        set {
            switch newValue {
            case nil:
                self.shirtPicture.image = nil
                self.selectImageButton.isEnabled = true
                self.selectImageButton.alpha = 1
                
                self.removeImageButton.isEnabled = false
                self.removeImageButton.alpha = 0.5
            default:
                self.shirtPicture.image = newValue
                self.selectImageButton.isEnabled = false
                self.selectImageButton.alpha = 0.5
                
                self.removeImageButton.isEnabled = true
                self.removeImageButton.alpha = 1
            }
        }
    }
    
    @IBOutlet weak var selectImageButton: UIButton!  {
        didSet {
            guard let button = self.selectImageButton else { return }
            button.isEnabled = true
            button.alpha = 1
        }
    }
    
    @IBOutlet weak var removeImageButton: UIButton! {
        didSet {
            guard let button = self.removeImageButton else { return }
            button.isEnabled = false
            button.alpha = 0.5
        }
    }
    
    @IBAction func selectImageButtonAction(_ sender: UIButton) {
        if self.imagePickerController != nil {
            self.imagePickerController?.delegate = nil
            self.imagePickerController = nil
        }
        
        self.imagePickerController = UIImagePickerController.init()
        
        let alert = UIAlertController.init(title: "Select Source Type", message: nil, preferredStyle: .actionSheet)

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .camera)
            }))
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            alert.addAction(UIAlertAction.init(title: "Photo Library", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .photoLibrary)
            }))
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            alert.addAction(UIAlertAction.init(title: "Saved Albums", style: .default, handler: { (_) in
                self.presentImagePicker(controller: self.imagePickerController!, source: .savedPhotosAlbum)
            }))
        }
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel))
        self.present(alert, animated: true)
    }
    
    internal func presentImagePicker(controller: UIImagePickerController , source: UIImagePickerController.SourceType) {
        controller.delegate = self
        controller.sourceType = source
        self.present(controller, animated: true)
    }
    
    @IBAction func removeImageButtonAction(_ sender: UIButton) {
        self.selectedImage = nil
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if pickerView == brandPicker {
            return brandList.count
        }
        else if pickerView == neckSizePicker {
             return neckSizeList.count
        }
        else if pickerView == sleeveLengthSizePicker {
             return sleeveLengthList.count
        }
        else if pickerView == fitPicker {
             return fitList.count
        }
        else if pickerView == colorPicker {
             return colorList.count
        }
        else if pickerView == fabricPicker {
             return fabricTypeList.count
        }
        else if pickerView == collarPicker {
             return collarTypeList.count
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == brandPicker {
            return brandList[row]
        }
        else if pickerView == neckSizePicker {
             return neckSizeList[row]
        }
        else if pickerView == sleeveLengthSizePicker {
             return sleeveLengthList[row]
        }
        else if pickerView == fitPicker {
             return fitList[row]
        }
        else if pickerView == colorPicker {
             return colorList[row]
        }
        else if pickerView == fabricPicker {
             return fabricTypeList[row]
        }
        else if pickerView == collarPicker {
             return collarTypeList[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == brandPicker {
            brandField.text = brandList[row]
            self.view.endEditing(false)
        }
        else if pickerView == neckSizePicker {
            neckSizeField.text = neckSizeList[row]
            self.view.endEditing(false)
        }
        else if pickerView == sleeveLengthSizePicker {
            sleeveLengthField.text = sleeveLengthList[row]
            self.view.endEditing(false)
        }
        else if pickerView == fitPicker {
            fitField.text = fitList[row]
            self.view.endEditing(false)
        }
        else if pickerView == colorPicker {
            colorField.text = colorList[row]
            self.view.endEditing(false)
        }
        else if pickerView == fabricPicker {
            fabricField.text = fabricTypeList[row]
            self.view.endEditing(false)
        }
        else if pickerView == collarPicker {
            collarField.text = collarTypeList[row]
            self.view.endEditing(false)
        }
    }
    
    
    @IBAction func addItemButton(_ sender: UIButton) {
        var textFieldsCompleted: Bool = false
        
        for textField in textFields {
            if textField.text == "" {
                let title = "Empty Text Field"
                let alertMessage = "Please fill in all fields."
                let alertController =
                    UIAlertController(title: title,
                                      message: alertMessage,
                                      preferredStyle: .alert)

                let cancelAction =
                    UIAlertAction(title: "OK",
                                  style: .cancel,
                                  handler: nil)
                alertController.addAction(cancelAction)
                present(alertController,
                        animated: true,
                        completion: nil)
            }
            else {
                textFieldsCompleted = true
            }
        }
        if self.shirtPicture.image == nil {
            let title = "Empty Image"
            let alertMessage = "Please add an image."
            let alertController =
                UIAlertController(title: title,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
        
        if self.shirtPicture.image != nil && textFieldsCompleted == true {
            GlobalShirtObjectList.shirtObjectList.append(Shirt(
                shirtPicture: shirtPicture,
                brandField: brandField.text!,
                neckSizeField: neckSizeField.text!,
                sleeveLengthField: sleeveLengthField.text!,
                fitField: fitField.text!,
                colorField: colorField.text!,
                fabricField: fabricField.text!,
                collarField: collarField.text!))
            
            let title = "Item Successfully Added"
            let alertMessage = "Information saved."
            let alertController =
                UIAlertController(title: title,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        
            for tf in textFields {
                tf.text = ""
            }
            self.selectedImage = nil
        }
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shirtPicture.contentMode = .scaleAspectFill
        self.selectImageButton.isEnabled = self.selectedImage == nil
        self.selectImageButton.alpha = 1
        
        brandPicker.dataSource = self
        brandPicker.delegate = self
        brandPicker.tag = 1
        brandField.inputView = brandPicker
        
        neckSizePicker.dataSource = self
        neckSizePicker.delegate = self
        neckSizePicker.tag = 2
        neckSizeField.inputView = neckSizePicker
        
        sleeveLengthSizePicker.dataSource = self
        sleeveLengthSizePicker.delegate = self
        sleeveLengthSizePicker.tag = 3
        sleeveLengthField.inputView = sleeveLengthSizePicker
        
        fitPicker.dataSource = self
        fitPicker.delegate = self
        fitPicker.tag = 4
        fitField.inputView = fitPicker
        
        colorPicker.dataSource = self
        colorPicker.delegate = self
        colorPicker.tag = 5
        colorField.inputView = colorPicker
        
        fabricPicker.dataSource = self
        fabricPicker.delegate = self
        fabricPicker.tag = 6
        fabricField.inputView = fabricPicker
        
        collarPicker.dataSource = self
        collarPicker.delegate = self
        collarPicker.tag = 7
        collarField.inputView = collarPicker

        // Do any additional setup after loading the view.
    }
    
    let brandList = ["", "Alfani", "Arrow", "Bar III", "Bonobos", "BOSS", "Brooks Brothers", "Calvin Klein", "Club Room", "DKNY", "Eagle", "Emporio Armani", "Eton", "Hugo Boss", "INC International Concepts", "Kenneth Cole", "Kenneth Cole Reaction", "Lauren Ralph Lauren", "Lucky Brand", "Michael Kors", "Nautica", "Nine West", "Perry Ellis", "Tasso Elba", "The Tie Bar", "Thomas Pink", "Tiger of Sweeden", "Tommy Hilfiger", "Topman", "Van Hussen", "W.R.K." ]
    
    let neckSizeList = ["", "14in", "14.5in", "15in", "15.5in", "16in", "16.5in", "17in", "17.5in", "18in", "18.5in", "19in", "19.5in", "20in", "22in"]
    
    let sleeveLengthList = ["", "31/32", "32/33", "33/34", "34/35", "35/36", "36/37", "37/38"]
    
    let fitList = ["", "Classic Fit", "Slim Fit", "Extra Slim Fit", "Athletic Fit"]
    
    let colorList = ["", "Black", "Grey", "White", "Off-White", "Beige", "Brown", "Metallic", "Purple", "Blue", "Green", "Yellow", "Orange", "Pink", "Red", "Multi-Color"]
    
    let fabricTypeList = ["", "Chambray", "Corduroy", "100% Cotton", "Cotton Blend", "Denim", "Flannel", "Jersey Knit", "Linen Blend", "Spandex", "Synthetic", "Twill"]
    
    let collarTypeList = ["", "Foward Point", "Button-Down", "Spread", "Tab", "Cutaway", "Band", "Club", "Pin"]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// Adding and Removing Functionality implmentation was adapted from:
// https://github.com/davidthorn/xcode-projects/blob/master/ImageSelectionApplication/ImageSelectionApplication/ViewController.swift
//
extension AddItemViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return self.imagePickerControllerDidCancel(picker)
        }
        
        self.selectedImage = image
        
        picker.dismiss(animated: true) {
            picker.delegate = nil
            self.imagePickerController = nil
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true) {
            picker.delegate = nil
            self.imagePickerController = nil
        }
    }
    
}
