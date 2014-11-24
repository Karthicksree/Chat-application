Rabl.configure do |c|
  c.view_paths = [
    Rails.root.join("app/api/templates"), 
    Rails.root.join("app/views") 
  ]
end