use zed_extension_api::{self as zed};

struct LeafExtension;

impl zed::Extension for LeafExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(LeafExtension);