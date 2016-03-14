import Foundation
import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, world"
}

app.get("/query") { request in
    let query = request.data.query
    
    do {
        return try Json(query)
    } catch _ {
        return "Failed"
    }
}

app.start(port: 8080)
