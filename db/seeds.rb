["all", Rails.env].each do |seed|
  seed_file = Rails.root.join("db", "seeds", "#{seed}.rb")

  if File.exist?(seed_file)
    require seed_file

  end
end
