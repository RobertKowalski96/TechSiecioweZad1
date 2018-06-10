package rob.businesslogic;

import rob.model.Product;

import java.util.List;

public class PriceCalculator {

    public double totalPrice(List<Product> products){
        return  products.stream().mapToDouble(Product::getPrice).sum();
    }

    public double averagePrice(List<Product> products){
        return  products.stream().mapToDouble(Product::getPrice).sum()/products.size();
    }
}
