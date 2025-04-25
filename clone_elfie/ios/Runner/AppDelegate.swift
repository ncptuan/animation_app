import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
//      window = UIWindow(frame: UIScreen.main.bounds)
//          // Instantiate your LottieSplashViewController
//          let splashViewController = LottieSplashViewController()
//          window?.rootViewController = splashViewController // Start with the splash screen
//          window?.makeKeyAndVisible()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

//func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//    guard let windowScene = (scene as? UIWindowScene) else { return }
//
//    window = UIWindow(windowScene: windowScene)
//    // Instantiate your LottieSplashViewController
//    let splashViewController = LottieSplashViewController()
//    window?.rootViewController = splashViewController // Start with the splash screen
//    window?.makeKeyAndVisible()
//}
