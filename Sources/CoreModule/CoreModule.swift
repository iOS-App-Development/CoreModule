import Foundation
@_exported import APIClient
@_exported import APIClientModule
@_exported import HTTPClientModule

public class CoreModule {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    
}
extension CoreModule:CoreModuleAPI
{
    func load() {
    }
    
    func unload() {
    }
}
