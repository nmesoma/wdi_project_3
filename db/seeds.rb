require 'HTTParty'

response = HTTParty.get("https://www.popshops.com/v3/products.json", query: { account: ENV['POPSHOPS_API_KEY'], catalog: ENV['POPSHOPS_CATALOG'], results_per_page: 100})

response['results']['products']['product'].each do |product|
  product['offers']['offer'].each do |offer|
    Product.create!(
      description: offer['description'],
      image: offer['image_url_large'],
      name: offer['name'],
      price_retail: offer['price_retail'],
      currency_iso: offer['currency_iso'],
      url: offer['url']
    )
    puts "Product created: #{offer['name']}"
  end
end