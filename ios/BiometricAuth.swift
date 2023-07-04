import Foundation

@objc(BiometricAuth)
class BiometricAuth: NSObject {
    private let biometricIDAuth = BiometricIDAuth()
    
    
    @objc func authorize(_ resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
        biometricIDAuth.canEvaluate { (canEvaluate, _, canEvaluateError) in
            if let error = canEvaluateError {
                reject("E_CAN_EVALUATE", "Error evaluating biometric auth: \(error.localizedDescription)", error)
                return
            }
            
            guard canEvaluate else {
                reject("E_CANNOT_EVALUATE", "Face ID/Touch ID may not be configured", nil)
                return
            }
            
            self.biometricIDAuth.evaluate { (success, error) in
                if let error = error {
                    reject("E_EVALUATE", "Error during biometric auth evaluation: \(error.localizedDescription)", error)
                    return
                }
                
                if success {
                    resolve(true)
                } else {
                    reject("E_AUTH_FAILED", "Biometric authentication failed", nil)
                }
            }
        }
    }
    
    
    static func requiresMainQueueSetup()->Bool{
        return true;
    }
    
    @objc
    func constantsToExport()-> [String: Any]!{
        return ["initialValue": 0]
    }
    
    
}
