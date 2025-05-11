//
//  AppleAuthenticator.swift
//  
//
//  Created by Kaleb Cooper on 7/21/21.
//

//import AuthenticationServices
//import Foundation
//import Security
//
//public class AppleAuthenticator {
//    
//    private let requestedScopes: [ASAuthorization.Scope]?
//    
//    public init(requestedScopes: [ASAuthorization.Scope]?) {
//        self.requestedScopes = requestedScopes
//    }
//    
//    public func getAuthController() -> ASAuthorizationController {
//        let appleIDProvider = ASAuthorizationAppleIDProvider()
//        let request = appleIDProvider.createRequest()
//        request.requestedScopes = self.requestedScopes
//        
//        let authorizationController = ASAuthorizationController(
//            authorizationRequests: [request]
//        )
//        
//        return authorizationController
//    }
//    
//    public func getCredentialState(
//        forUserID id: String,
//        completion: @escaping (
//            ASAuthorizationAppleIDProvider.CredentialState
//        ) -> Void
//    ) {
//        let appleIDProvider = ASAuthorizationAppleIDProvider()
//        
//        appleIDProvider.getCredentialState(forUserID: id) { (credentialState, error) in
//            completion(credentialState)
//        }
//    }
//    
//}
