//
//  File.swift
//  
//
//  Created by Alanoud on 04/11/1445 AH.
//

import App
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
