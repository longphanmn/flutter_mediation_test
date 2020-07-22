import Flutter
import UIKit
import GoogleMobileAdsMediationTestSuite

public class SwiftMediationTestPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "mediation_test", binaryMessenger: registrar.messenger())
    let instance = SwiftMediationTestPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
       let viewController: UIViewController =
            (UIApplication.shared.delegate?.window??.rootViewController)!;
     guard call.method == "showTestSuite" else {
        result(FlutterMethodNotImplemented)
        return
      }
      GoogleMobileAdsMediationTestSuite.present(on: viewController, delegate: nil)
  }
}
