require "./NSResponder"

module Hoop
  class NSView < NSResponder
    import_class

    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "initWithCoder:", ["NSCoder"], "id", "initialize"
    objc_method "addSubview:", ["NSView"], "void", "<<"
    objc_method "setHidden:", ["BOOL"], "void", "set_hidden="
    objc_method "viewWithTag:", ["NSUInteger"], "id", "view_with_tag="

  end
end
