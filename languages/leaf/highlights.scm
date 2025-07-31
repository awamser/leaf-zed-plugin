; Leaf templating syntax highlighting

; HTML elements
(element
  (start_tag
    (tag_name) @tag))

(element
  (end_tag
    (tag_name) @tag))

(self_closing_tag
  (tag_name) @tag)

; HTML attributes
(attribute
  (attribute_name) @attribute)

(quoted_attribute_value) @string
(attribute_value) @string

; HTML comments
(comment) @comment

; Leaf-specific syntax
; Variable interpolation: #(variable)
("#(" @punctuation.special
 ")" @punctuation.special) @variable

; Conditional statements: #if(condition):
("#if(" @keyword.control
 ")" @punctuation.special
 ":" @punctuation.special) @conditional

("#elseif(" @keyword.control
 ")" @punctuation.special
 ":" @punctuation.special) @conditional

("#else:" @keyword.control) @conditional

("#endif" @keyword.control) @conditional

; Loop statements: #for(item in items):
("#for(" @keyword.control
 ")" @punctuation.special
 ":" @punctuation.special) @repeat

("#endfor" @keyword.control) @repeat

; Function calls: #(function())
("#(" @function.call
 ")" @punctuation.special) @function

; String literals
(quoted_attribute_value) @string
(text) @text

; Doctype
(doctype) @type.builtin

; Text content
(text) @text