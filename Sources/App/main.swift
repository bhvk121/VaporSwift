import Vapor

let drop = Droplet()

drop.get("/") { request in
    return try drop.view.make("view.html")
}

drop.get("/name",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)"
    }
    
    return "ERROR!!!"
}

drop.get("/view") { request in
    return "Welcome to Swift + Vapor Home!"
}

drop.run()
