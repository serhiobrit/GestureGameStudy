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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.backgroundColor = .clear
        secondView.backgroundColor = .clear
        thirdView.backgroundColor = .clear
        fourthView.backgroundColor = .clear
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func firstViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        let fourthViewFrame = fourthView.frame
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: firstView)
        
        guard gesture.state == .ended else {
            return
        }
        
        print("first view panned")
        
        for value in Int(secondViewFrame.minY)...Int(secondViewFrame.maxY) {                if Int(firstViewFrame.origin.y) == value {
            firstView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.secondView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.secondView.workingView.backgroundColor = .purple
            }
            
            //            secondView.workingView.layer.cornerRadius = secondView.workingView.frame.size.width / 2
        }
        }
        
        for value in Int(thirdViewFrame.minY)...Int(thirdViewFrame.maxY) {                if Int(firstViewFrame.origin.y) == value {
            firstView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.thirdView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.thirdView.workingView.backgroundColor = .green
            }
            
        }
        }
        
        for value in Int(fourthViewFrame.minY)...Int(fourthViewFrame.maxY) {                if Int(firstViewFrame.origin.y) == value {
            firstView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.fourthView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.fourthView.workingView.backgroundColor = .red
            }
            
        }
        }
    }
    
    @IBAction func secondViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        let fourthViewFrame = fourthView.frame
        
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
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.firstView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.firstView.workingView.backgroundColor = .yellow
            }
            
        }
        }
        
        for value in Int(thirdViewFrame.minY)...Int(thirdViewFrame.maxY) {                if Int(secondViewFrame.origin.y) == value {
            secondView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.thirdView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.thirdView.workingView.backgroundColor = .lightGray
            }
            
        }
        }
        
        for value in Int(fourthViewFrame.minY)...Int(fourthViewFrame.maxY) {                if Int(secondViewFrame.origin.y) == value {
            secondView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.fourthView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.fourthView.workingView.backgroundColor = .systemPink
            }
            
        }
        }
        
    }
    
    
    @IBAction func thirdViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        let fourthViewFrame = fourthView.frame
        
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
        
        for value in Int(firstViewFrame.minY)...Int(firstViewFrame.maxY) {                if Int(thirdViewFrame.origin.y) == value {
            thirdView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.firstView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.firstView.workingView.backgroundColor = .systemGreen
            }
            
        }
        }
        
        for value in Int(secondViewFrame.minY)...Int(secondViewFrame.maxY) {                if Int(thirdViewFrame.origin.y) == value {
            thirdView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.secondView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.secondView.workingView.backgroundColor = .blue
            }
            
        }
        }
        
        for value in Int(fourthViewFrame.minY)...Int(fourthViewFrame.maxY) {                if Int(thirdViewFrame.origin.y) == value {
            thirdView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.fourthView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.fourthView.workingView.backgroundColor = .blue
            }
            
        }
        }
    }
    
    @IBAction func fourthViewPanAction(_ gesture: UIPanGestureRecognizer) {
        
        let firstViewFrame = firstView.frame
        let secondViewFrame = secondView.frame
        let thirdViewFrame = thirdView.frame
        let fourthViewFrame = fourthView.frame
        
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
        
        for value in Int(firstViewFrame.minY)...Int(firstViewFrame.maxY) {                if Int(fourthViewFrame.origin.y) == value {
            fourthView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.firstView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.firstView.workingView.backgroundColor = .magenta
            }
            
        }
        }
        
        for value in Int(secondViewFrame.minY)...Int(secondViewFrame.maxY) {                if Int(fourthViewFrame.origin.y) == value {
            fourthView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.secondView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.secondView.workingView.backgroundColor = .systemIndigo
            }
            
        }
        }
        
        for value in Int(thirdViewFrame.minY)...Int(thirdViewFrame.maxY) {                if Int(fourthViewFrame.origin.y) == value {
            fourthView.isHidden = true
            
            UIView.animate(withDuration: 3,
                           delay: 0,
                           options: .curveEaseIn) {
                self.thirdView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.thirdView.workingView.backgroundColor = .orange
            }
            
        }
        }
    }
    
}

