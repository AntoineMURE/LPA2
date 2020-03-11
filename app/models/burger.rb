class Burger < ApplicationRecord
    def nutriments(code)
        @product = Openfoodfacts::Product.get(code, locale: 'fr')
        if @product == nil
            @json = [["No Data"], ["No data for this product code"]]
          else
            @json = @product.nutriments.to_hash
          end
        return @json
    end
end
