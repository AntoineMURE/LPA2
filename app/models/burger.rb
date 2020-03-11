class Burger < ApplicationRecord
    def nutriments(code)
        @product = Openfoodfacts::Product.get(code, locale: 'fr')
        @json = product.nutriments.to_hash
        return @json
    end
end
