//
//  DatabaseConfig.swift
//  
//
//  Created by Bunga Mungil on 05/07/23.
//

import FluentMySQLDriver
import Foundation


public let DatabaseConfig: DatabaseConfigurationFactory = .mysql(
    hostname: env("DATABASE_HOST") ?? "localhost",
    port: env("DATABASE_PORT").flatMap(Int.init(_:)) ?? MySQLConfiguration.ianaPortNumber,
    username: env("DATABASE_USERNAME") ?? "vtid_username",
    password: env("DATABASE_PASSWORD") ?? "vtid_password",
    database: env("DATABASE_NAME") ?? "vtid_database"
)


public let DatabaseID: DatabaseID = .mysql


fileprivate func env(_ key: String) -> String? {
    return ProcessInfo.processInfo.environment[key]
}
