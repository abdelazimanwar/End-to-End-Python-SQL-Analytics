-- View: Centralized dataset combining sales fact with customer dimensions
CREATE VIEW dbo.vCustomer_Order_Details
AS
(
SELECT
	 C.customer_key
	,C.customer_name
	,C.segment
	,F.order_date_key
	,F.ship_date_key
	,F.product_key
	,F.sales
	,F.quantity
	,F.profit
	,F.discount
	,F.location_key
	,F.ship_mode_key
FROM [dbo].[fact_table] F
JOIN [dbo].[dim_customer] C
	ON F.customer_key = C.customer_key)