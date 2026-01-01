(use-package indent-bars
  :custom
  (indent-bars-no-descend-lists t)
  (indent-bars-treesit-support t)
  (indent-bars-selection-method)
 (indent-bars-treesit-scope
  '((python
     function_definition
     class_definition
     for_statement
     if_statement
     with_statement
     while_statement)

     (rust
      mod_item
      impl_item
      trait_item
      function_item

      struct_item
      enum_item
      union_item

      if_expression
      match_expression
      while_expression
      for_expression
      loop_expression
      block)))
 :hook
 ((rust-ts-mode) . indent-bars-mode)
 ((nix-mode) . indent-bars-mode))
