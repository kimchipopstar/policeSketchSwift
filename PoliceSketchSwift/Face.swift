//
//  File.swift
//  PoliceSketchSwift
//
//  Created by Jaewon Kim on 2017-11-09.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

import Foundation
import UIKit

class Face {
    private var eyes:[UIImage] = [UIImage]()
    private var nose:[UIImage] = [UIImage]()
    private var mouth:[UIImage] = [UIImage]()
    private var eyesIndex = 0;
    private var noseIndex = 0;
    private var mouthIndex = 0;
    
    func setEyes(eyesImage:[UIImage]) {
        self.eyes = eyesImage
    }
    func setNose(noseImage:[UIImage]) {
        self.nose = noseImage
    }
    func setMouth(mouthImage:[UIImage]) {
        self.mouth = mouthImage
    }
    
    func leftEyeButton() -> UIImage {
        if eyesIndex == 0 {
            eyesIndex = eyes.count - 1
        } else {
            eyesIndex = eyesIndex - 1
        }
        return eyes[eyesIndex]
    }
    func rightEyeButton() -> UIImage {
        if eyesIndex == eyes.count - 1 {
            eyesIndex = 0
        } else {
            eyesIndex = eyesIndex + 1
        }
        return eyes[eyesIndex]
    }
    
    func leftNoseButton() -> UIImage {
        if noseIndex == 0 {
            noseIndex = nose.count - 1
        } else {
            noseIndex = noseIndex - 1
        }
        return nose[noseIndex]
    }
    func rightnoseButton() -> UIImage {
        if noseIndex == nose.count - 1 {
            noseIndex = 0
        } else {
            noseIndex = noseIndex + 1
        }
        return nose[noseIndex]
    }
    
    func leftMouthButton() -> UIImage {
        if mouthIndex == 0 {
            mouthIndex = mouth.count - 1
        } else {
            mouthIndex = mouthIndex - 1
        }
        return mouth[mouthIndex]
    }
    func rightMouthButton() -> UIImage {
        if mouthIndex == mouth.count - 1 {
            mouthIndex = 0
        } else {
            mouthIndex = mouthIndex + 1
        }
        return mouth[mouthIndex]
    }
}
