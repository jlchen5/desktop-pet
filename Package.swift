// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DogPet",
    platforms: [
        .macOS(.v13)
    ],
    targets: [
        .executableTarget(
            name: "DogPet",
            path: "Sources/DogPet"
        )
    ]
)
