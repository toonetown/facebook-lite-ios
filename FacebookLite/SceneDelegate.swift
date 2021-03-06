//
//  SceneDelegate.swift
//  FacebookLite
//
//  Created by Nathan Toone on 6/27/20.
//  Copyright © 2020 Nathan Toone. All rights reserved.
//

import UIKit
import SwiftUI
import SafariServices

class SceneDelegate: UIResponder, UIWindowSceneDelegate, SFSafariViewControllerDelegate {

    var window: UIWindow?

    static let baseUrl =       URL(string: "https://www.facebook.com")!
    static let barColorRed =   CGFloat(Double(27) / 255.0)
    static let barColorGreen = CGFloat(Double(62) / 255.0)
    static let barColorBlue =  CGFloat(Double(136) / 255.0)
    static let btnColorRed =   CGFloat(Double(255) / 255.0)
    static let btnColorGreen = CGFloat(Double(255) / 255.0)
    static let btnColorBlue =  CGFloat(Double(255) / 255.0)

    // Creates and initializes a new controller that we can attach to the window.
    func initController() -> SFSafariViewController {
        let controller = SFSafariViewController(url: SceneDelegate.baseUrl)
        controller.preferredBarTintColor = UIColor(red: SceneDelegate.barColorRed,
                                                 green: SceneDelegate.barColorGreen,
                                                  blue: SceneDelegate.barColorBlue,
                                                 alpha: 1.0)
        controller.preferredControlTintColor = UIColor(red: SceneDelegate.btnColorRed,
                                                     green: SceneDelegate.btnColorGreen,
                                                      blue: SceneDelegate.btnColorBlue,
                                                     alpha: 1.0)
        controller.delegate = self
        return controller
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use a SFSafariViewController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = initController()
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    // MARK: UIWindowSceneDelegate Lifecycle
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }

    // MARK: SFSafariViewControllerDelegate Lifecycle
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        // Called when the user taps the Done button. Upon this call, the view controller is dismissed modally.
        guard (self.window != nil) else {
            return
        }
        self.window?.rootViewController = initController()
    }
}
