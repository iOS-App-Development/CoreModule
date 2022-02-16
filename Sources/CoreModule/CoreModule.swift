import Foundation
import APIClient
import APIClientModule
import HTTPClientModule

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
