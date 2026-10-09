//
//  ViewController.swift
//  WAnimations
//
//  Created by Tucker on 2026-10-09.
//

import UIKit

class ViewController: UIViewController {
    
    var spinLayer : CALayer?
    var flyLayer : CALayer?
    var fadeLayer : CALayer?
    
    @IBOutlet var sgAnim : UISegmentedControl!
    @IBOutlet var imgView : UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateImage()
        chooseAnim()
        
    }
    
    func animateImage() {
        let playImage = UIImage(named : "play")!
        let settingsImage = UIImage(named : "settings")!
        let aboutImage = UIImage(named : "about")!
        let arImg = [ playImage, settingsImage, aboutImage ]
        
        imgView.animationImages = arImg
        imgView.animationDuration = 2.0
        imgView.animationRepeatCount = 0
        imgView.startAnimating()
    }
    func clearAnims(){
        spinLayer?.removeAllAnimations()
        fadeLayer?.removeAllAnimations()
        flyLayer?.removeAllAnimations()
        spinLayer?.removeFromSuperlayer()
        fadeLayer?.removeFromSuperlayer()
        flyLayer?.removeFromSuperlayer()
    }
    func chooseAnim() {
        clearAnims()
        if sgAnim.selectedSegmentIndex == 0 {
            spinImage()
        }
        else if sgAnim.selectedSegmentIndex == 1 {
            moveImage()
        }
        else {
            fadeImage()
        }
    }
    
    func spinImage() {
        let spinImage = UIImage(named : "play")
        spinLayer = .init()
        spinLayer?.contents = spinImage?.cgImage
        spinLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        spinLayer?.anchorPoint = CGPoint(x: 0, y: 0)
        spinLayer?.position = CGPoint(x: 200, y: 200)
        view.layer.addSublayer(spinLayer!)
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
//        rotateAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        rotateAnimation.fromValue = 0
        rotateAnimation.toValue = 2 * Double.pi
        rotateAnimation.duration = 1.0
        rotateAnimation.repeatCount = .infinity
        spinLayer?.add(rotateAnimation, forKey: nil)
        
    }
    func moveImage() {
        let flyImage = UIImage(named : "about")
        flyLayer = .init()
        flyLayer?.contents = flyImage?.cgImage
        flyLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        flyLayer?.position = CGPoint(x: 0, y: 0)
        view.layer.addSublayer(flyLayer!)
        
        let moveAnimation = CABasicAnimation(keyPath: "position")
        moveAnimation.timingFunction = CAMediaTimingFunction(name : .easeInEaseOut)
        moveAnimation.fromValue = NSValue.init(cgPoint: CGPoint(x: 0, y: 0))
        moveAnimation.toValue = NSValue.init(cgPoint: CGPoint(x: 700, y: 500))
        moveAnimation.isRemovedOnCompletion = false
        moveAnimation.duration = 3.0
        moveAnimation.repeatCount = .infinity
        flyLayer?.add(moveAnimation, forKey: nil)
        
    }
    func fadeImage() {
        let fadeImage = UIImage(named : "settings")
        fadeLayer = .init()
        fadeLayer?.contents = fadeImage?.cgImage
        fadeLayer?.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        fadeLayer?.position = CGPoint(x: 200, y: 200)
        view.layer.addSublayer(fadeLayer!)
        
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.timingFunction = CAMediaTimingFunction(name : .easeInEaseOut)
        fadeAnimation.fromValue = NSNumber.init(value: 1.0)
        fadeAnimation.toValue = NSNumber.init(value: 0.0)
        fadeAnimation.isRemovedOnCompletion = false
        fadeAnimation.duration = 3.0
        fadeAnimation.beginTime = 1.0
        fadeAnimation.autoreverses = true
        fadeAnimation.repeatCount = .infinity
        
        fadeLayer?.add(fadeAnimation, forKey: nil)
        
        
    }
    
    @IBAction func segmentDidChange(sender :  UISegmentedControl){
        chooseAnim()
    }
    
    @IBAction func unwindToHomeVC(sender : UIStoryboardSegue){
        
    }


}

