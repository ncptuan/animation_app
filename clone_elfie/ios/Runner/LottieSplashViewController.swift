////
////  LottieSplashViewController.swift
////  Runner
////
////  Created by Tuan Ngo on 4/24/25.
////
//
//import UIKit
//import Lottie
//
//class LottieSplashViewController: UIViewController {
//
//    var animationView: LottieAnimationView?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Optional: Set background color to match static launch screen
//        view.backgroundColor = .white // Or your desired color
//
//        // 1. Create the LottieAnimationView
//        // Use .named("YourAnimationName") if the JSON is in your main bundle
//        // Use .filepath("/path/to/animation.json") for a specific path
//        animationView = .init(name: "launch_animation") // <-- Replace with your JSON filename (without .json)
//        guard let animationView = animationView else { return }
//
//        animationView.frame = view.bounds // Or position it as needed
//        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .playOnce // Or .loop, .autoReverse etc.
//        animationView.animationSpeed = 1.0
//
//        // Add the animation view to the view controller's view
//        view.addSubview(animationView)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        // 2. Play the animation
//        animationView?.play { [weak self] (finished) in
//            // 3. Animation finished - Transition to main app
//            if finished {
//                print("Lottie Animation Completed")
//                self?.transitionToMainApp()
//            } else {
//                // Animation interrupted (e.g., view disappeared)
//                // Decide if you still want to transition or handle differently
//                print("Lottie Animation Interrupted")
//                // Optionally transition anyway if needed
//                // self?.transitionToMainApp()
//            }
//        }
//
//        // Alternative: Play for a fixed duration if needed, though completion is often better
//        // animationView?.play()
//        // DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Example: 2 seconds
//        //    self.transitionToMainApp()
//        // }
//    }
//
//    func transitionToMainApp() {
//        // This is where you transition to your main application interface.
//        // How you do this depends on your app's structure (Storyboard, programmatic, SwiftUI).
//
//        // --- Example: Using SceneDelegate (Recommended for newer projects) ---
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//              let sceneDelegate = windowScene.delegate as? SceneDelegate else {
//            return
//        }
//
//        // Instantiate your main view controller (e.g., from Storyboard or code)
//        // Replace "Main" and "MainViewController" with your storyboard and initial VC identifiers
//        // let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        // let mainVC = storyboard.instantiateInitialViewController()
//        // Or programmatically:
//        let mainVC = MainTabBarController() // Or your root ViewController
//
//        // Set the main VC as the root, possibly with a transition
//        sceneDelegate.window?.rootViewController = mainVC
//        sceneDelegate.window?.makeKeyAndVisible()
//
//        // Optional: Add a fade transition
//        if let window = sceneDelegate.window {
//            UIView.transition(with: window,
//                              duration: 0.3, // Adjust duration as needed
//                              options: .transitionCrossDissolve,
//                              animations: nil,
//                              completion: nil)
//        }
//
//
//        // --- Example: Using AppDelegate (For older projects or specific setups) ---
//        /*
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
//
//        let mainVC = MainTabBarController() // Or your root ViewController
//        appDelegate.window?.rootViewController = mainVC
//        appDelegate.window?.makeKeyAndVisible()
//
//        if let window = appDelegate.window {
//             UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: nil, completion: nil)
//        }
//        */
//    }
//}
