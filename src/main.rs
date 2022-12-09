use rocket::fs::NamedFile;

#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Hello, world!"
}

// #[get("/.well-known/webfinger?<resource>")]
// fn acct(resource: &str) -> Option<content::RawJson<String>> {
//     fs::read_to_string(format!("{resource}.json")).ok().map(|s| content::RawJson(s))
// }

#[get("/actor")]
async fn actor() -> Option<NamedFile> {
    NamedFile::open("actor.json").await.ok()
}

#[get("/.well-known/webfinger?resource=acct:css@apub.skweekychair.games")] 
async fn acct() -> Option<NamedFile> {
    NamedFile::open("acct.json").await.ok()
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index, actor, acct])
}