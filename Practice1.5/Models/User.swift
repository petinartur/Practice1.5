//
//  User.swift
//  Practice1.5
//
//  Created by Артур Петин on 06.12.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getPerson() -> User {
        User(
            userName: "Tim",
            password: "qwerty123",
            person: Person(firstName: "Artur", lastName: "Petin", aboutPerson: "Сижу, учу свифт, играю роцк и слишком много прокрастинирую :-(")
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let aboutPerson: String
}