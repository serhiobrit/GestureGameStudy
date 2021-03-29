//
//  ViewController.swift
//  GestureGameStudy
//
//  Created by Serhio Brit on 29.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstView: CustomView!
    @IBOutlet weak var secondView: CustomView!
    @IBOutlet weak var thirdView: CustomView!
    @IBOutlet weak var fourthView: CustomView!
    @IBOutlet weak var fifthView: CustomView!
    @IBOutlet weak var sixthView: CustomView!
    @IBOutlet weak var seventhView: CustomView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.backgroundColor = .clear
        secondView.backgroundColor = .clear
        thirdView.backgroundColor = .clear
        fourthView.backgroundColor = .clear
        fifthView.backgroundColor = .clear
        sixthView.backgroundColor = .clear
        seventhView.backgroundColor = .clear
    }
    
    @IBAction func firstViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        //        let fourthViewFrame = fourthView.frame
        //        let fifthViewFrame = fifthView.frame
        //        let sixthViewFrame = sixthView.frame
        //        let seventhViewFrame = seventhView.frame
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("first view panned")
        
        for value in Int(secondViewFrame.minY)...Int(secondViewFrame.maxY) {                if Int(firstViewFrame.origin.y) == value {
            firstView.isHidden = true
            secondView.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
        
        for value in Int(thirdViewFrame.minY)...Int(thirdViewFrame.maxY) {                if Int(firstViewFrame.origin.y) == value {
            firstView.isHidden = true
            thirdView.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
    }
    
    @IBAction func secondViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("second view panned")
        
        for value in Int(firstViewFrame.minY)...Int(firstViewFrame.maxY) {                if Int(secondViewFrame.origin.y) == value {
            secondView.isHidden = true
            firstView.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
        
        for value in Int(thirdViewFrame.minY)...Int(thirdViewFrame.maxY) {                if Int(secondViewFrame.origin.y) == value {
            secondView.isHidden = true
            thirdView.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        }
        
    }
    
    
    @IBAction func thirdViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("third view panned")
    }
    
    @IBAction func fourthViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("fourth view panned")
    }
    
    @IBAction func fifthViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("fifth view panned")
    }
    
    @IBAction func sixthViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("sixth view panned")
    }
    
    
    @IBAction func seventhViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("seventh view panned")
    }
    
    
}

