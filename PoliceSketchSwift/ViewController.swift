//
//  ViewController.swift
//  PoliceSketchSwift
//
//  Created by Jaewon Kim on 2017-11-08.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eyeImageView: UIImageView!
    @IBOutlet weak var noseImageView: UIImageView!
    @IBOutlet weak var mouthImageView: UIImageView!
    let face:Face = Face()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let eyeImages:[UIImage] = [UIImage.init(named: "eyes_1"),UIImage.init(named: "eyes_2"),UIImage.init(named: "eyes_3"),UIImage.init(named: "eyes_4"),UIImage.init(named: "eyes_5")]
        let eyeImages:[UIImage] = [#imageLiteral(resourceName: "eyes_1"),#imageLiteral(resourceName: "eyes_2"),#imageLiteral(resourceName: "eyes_3"),#imageLiteral(resourceName: "eyes_4"),#imageLiteral(resourceName: "eyes_5")]
        let noseImages:[UIImage] = [#imageLiteral(resourceName: "nose_1"),#imageLiteral(resourceName: "nose_2"),#imageLiteral(resourceName: "nose_3"),#imageLiteral(resourceName: "nose_4"),#imageLiteral(resourceName: "nose_5")]
        let mouthImages:[UIImage] = [#imageLiteral(resourceName: "mouth_1"),#imageLiteral(resourceName: "mouth_2"),#imageLiteral(resourceName: "mouth_3"),#imageLiteral(resourceName: "mouth_4"),#imageLiteral(resourceName: "mouth_5")]
        face.setEyes(eyesImage: eyeImages)
        face.setNose(noseImage: noseImages)
        face.setMouth(mouthImage: mouthImages)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func firstLeftButton(_ sender: Any) {
        let image = face.leftEyeButton()
        eyeImageView.image = image
    }
    @IBAction func secondLeftButton(_ sender: Any) {
        let image = face.leftNoseButton()
        noseImageView.image = image
    }
    
    @IBAction func thirdLeftButton(_ sender: Any) {
        let image  = face.leftMouthButton()
        mouthImageView.image = image
        
    }
    @IBAction func firstRIghtButton(_ sender: Any) {
        let image = face.rightEyeButton()
        eyeImageView.image = image
    }
    @IBAction func secondRIghtButton(_ sender: Any) {
        let image = face.rightnoseButton()
        noseImageView.image = image
    }
    @IBAction func thirdRightButton(_ sender: Any) {
        let image = face.rightMouthButton()
        mouthImageView.image = image
    }
    
}

