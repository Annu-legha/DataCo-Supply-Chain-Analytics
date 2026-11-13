USE dataco_supply_chain;

SELECT *
FROM supply_chain_data
LIMIT 10;
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    COUNT(DISTINCT `Customer Id`) AS unique_customers
FROM supply_chain_data;
SELECT
    Delivery_Performance,
    COUNT(*) AS total_records,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM supply_chain_data),
        2
    ) AS percentage
FROM supply_chain_data
GROUP BY Delivery_Performance;
SELECT
    `Shipping Mode`,
    COUNT(*) AS total_records,
    SUM(CASE
        WHEN Delivery_Performance = 'Late' THEN 1
        ELSE 0
    END) AS late_records,
    ROUND(
        SUM(CASE
            WHEN Delivery_Performance = 'Late' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY `Shipping Mode`
ORDER BY late_delivery_rate DESC;
SELECT
    Order_Month_Name,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY Order_Month, Order_Month_Name
ORDER BY Order_Month;
SELECT
    `Order Region`,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY `Order Region`
ORDER BY late_delivery_rate DESC;
SELECT
    `Customer Segment`,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY `Customer Segment`
ORDER BY late_delivery_rate DESC;
SELECT
    `Category Name`,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY `Category Name`
HAVING COUNT(*) >= 10
ORDER BY late_delivery_rate DESC;
SELECT
    ROUND(AVG(`Days for shipping (real)`), 2)
        AS avg_delivery_days,

    ROUND(AVG(`Days for shipment (scheduled)`), 2)
        AS avg_scheduled_days,

    ROUND(AVG(
        `Days for shipping (real)` -
        `Days for shipment (scheduled)`
    ), 2) AS avg_delivery_delay,

    MAX(
        `Days for shipping (real)` -
        `Days for shipment (scheduled)`
    ) AS maximum_delay_days

FROM supply_chain_data;
SELECT
    `Order Status`,
    COUNT(*) AS total_records,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM supply_chain_data),
        2
    ) AS percentage
FROM supply_chain_data
GROUP BY `Order Status`
ORDER BY total_records DESC;
SELECT
    `Customer Segment`,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit
FROM supply_chain_data
GROUP BY `Customer Segment`
ORDER BY total_sales DESC;
SELECT
    `Order Region`,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit
FROM supply_chain_data
GROUP BY `Order Region`
ORDER BY estimated_profit DESC;
SELECT
    `Product Name`,
    COUNT(*) AS total_records,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit
FROM supply_chain_data
GROUP BY `Product Name`
HAVING COUNT(*) >= 2
ORDER BY estimated_profit DESC
LIMIT 10;
SELECT
    `Product Name`,
    COUNT(*) AS total_records,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit
FROM supply_chain_data
GROUP BY `Product Name`
HAVING COUNT(*) >= 2
ORDER BY estimated_profit ASC
LIMIT 10;
SELECT
    `Shipping Mode`,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit,
    ROUND(AVG(`Item_Profit`), 2) AS avg_profit_per_record
FROM supply_chain_data
GROUP BY `Shipping Mode`
ORDER BY estimated_profit DESC;
SELECT
    `Shipping Mode`,
    COUNT(*) AS total_records,
    SUM(
        CASE
            WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0
        END
    ) AS late_records,
    SUM(
        CASE
            WHEN Delivery_Performance = 'On Time/Early'
            THEN 1 ELSE 0
        END
    ) AS on_time_records,
    ROUND(
        SUM(
            CASE
                WHEN Delivery_Performance = 'Late'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY `Shipping Mode`
ORDER BY late_delivery_rate DESC;
SELECT
    Order_Year,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY Order_Year
ORDER BY Order_Year;
SELECT
    Order_Month_Name,
    Order_Month,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    COUNT(DISTINCT `Order Id`) AS unique_orders
FROM supply_chain_data
GROUP BY Order_Month_Name, Order_Month
ORDER BY total_sales DESC;
SELECT
    Order_Month_Name,
    Order_Month,
    COUNT(*) AS total_records,
    SUM(
        CASE WHEN Delivery_Performance = 'Late'
        THEN 1 ELSE 0 END
    ) AS late_records,
    ROUND(
        SUM(
            CASE WHEN Delivery_Performance = 'Late'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS late_delivery_rate
FROM supply_chain_data
GROUP BY Order_Month_Name, Order_Month
ORDER BY late_delivery_rate DESC;
SELECT
    `Order Country`,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    ROUND(SUM(`Order Item Total`), 2) AS total_sales,
    ROUND(SUM(`Item_Profit`), 2) AS estimated_profit
FROM supply_chain_data
GROUP BY `Order Country`
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT `Order Id`) AS unique_orders,
    COUNT(DISTINCT `Order Customer Id`) AS unique_customers,
    COUNT(*) - COUNT(DISTINCT `Order Id`) AS extra_order_records
FROM supply_chain_data;