require "rails_helper"

RSpec.describe CustomerOrdersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customer_orders").to route_to("customer_orders#index")
    end

    it "routes to #new" do
      expect(get: "/customer_orders/new").to route_to("customer_orders#new")
    end

    it "routes to #show" do
      expect(get: "/customer_orders/1").to route_to("customer_orders#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/customer_orders/1/edit").to route_to("customer_orders#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/customer_orders").to route_to("customer_orders#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/customer_orders/1").to route_to("customer_orders#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/customer_orders/1").to route_to("customer_orders#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/customer_orders/1").to route_to("customer_orders#destroy", id: "1")
    end
  end
end
