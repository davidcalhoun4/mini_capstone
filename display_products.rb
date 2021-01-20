require "http"
response = HTTP.get("http://localhost:3000/api/products")
product = response.parse
pp product
