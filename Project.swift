import ProjectDescription

let project = Project(
  name: "TuistApp",
  // You can add local packages, or remote pacakges
  packages: [
    .remote(url: "https://github.com/Alamofire/Alamofire.git", requirement: .upToNextMajor(from: "5.1.0"))
  ],
  targets: [
    Target(
      name: "TuistApp",
      platform: .iOS,
      product: .app, // here you can define your target, app, static library and dynamic library...
      bundleId: "com.paigesoftware.TuistApp", // Your bundle id
      infoPlist: .default, // info.plist
      sources: ["Sources/**"], // Where your sources are
      resources: ["Resources/**"], // Where your resources are
      dependencies: [
        .package(product: "Alamofire") // if your target needs Alamofire..
      ]
    )
  ]
)
