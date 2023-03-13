use magnus::{define_class, function, Error, Object};

mod captcha;

pub fn create(len: usize, difficulty: usize, captcha_char: Vec<char>) -> (String, Vec<u8>) {
    let c = captcha::CaptchaBuilder::new();
    let out = c.complexity(difficulty).length(len).captcha_char(captcha_char).build();

    (out.text, out.image)
}

#[magnus::init]
fn init() -> Result<(), Error> {
    let class = define_class("RuCaptchaCore", Default::default())?;
    class.define_singleton_method("create", function!(create, 3))?;

    Ok(())
}
