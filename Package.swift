
// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RudderFirebase",
    dependencies: [
      .package(name: "Rudder", url: "https://github.com/rudderlabs/rudder-sdk-ios.git", from: "1.8.0"),
      .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0"),
        // add any other dependencies you need here
    ],
    targets: [
        .target(
            name: "RudderFirebase",
            dependencies: [
                "Rudder",
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                // add any other dependencies you need here
            ],
            path: "https://github.com/hamed-ice/rudder-integration-firebase-swift.git"
        )
    ]
)
