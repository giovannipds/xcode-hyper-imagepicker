//
//  ViewController.swift
//  Hyper ImagePicker
//
//  Created by Giovanni Pires da Silva on 16/07/2018.
//  Copyright © 2018 Ezoom. All rights reserved.
//

import UIKit
import ImagePicker

class ViewController: UIViewController, ImagePickerDelegate {
    
    var configuration = Configuration()
    var imagePicker: ImagePickerController!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configuration.doneButtonTitle = "Acabei"
        configuration.noImagesTitle = "Desculpe, nada de imagens aqui!"
        configuration.recordLocation = false
        imagePicker = ImagePickerController(configuration: configuration)
        imagePicker.delegate = self
        imagePicker.imageLimit = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pickImage(_ sender: UIButton) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func wrapperDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        print("wrapper did press")
    }
    
    func doneButtonDidPress(_ imagePicker: ImagePickerController, images: [UIImage]) {
        print("done did press")
        dismiss(animated: true, completion: nil)
        imageView.image = images[0]
    }
    
    func cancelButtonDidPress(_ imagePicker: ImagePickerController) {
        print("cancel pressed")
        dismiss(animated: true, completion: nil)
    }
    
}

