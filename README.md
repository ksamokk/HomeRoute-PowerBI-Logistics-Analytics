# HomeRoute | Delivery & Logistics Analytics — Power BI

**Business Intelligence portfolio project — Ksenia Samokhina**  
[Русская версия](README_RU.md)

## Project Overview

HomeRoute is a fictional delivery business. This Power BI project explores order fulfillment, delivery timeliness, carrier performance, shipping costs, and regional differences. The goal is to give operations managers a single place to monitor delivery KPIs and investigate potential logistics bottlenecks.

## Project Objectives

- Track order volume, on-time delivery, average delivery duration, shipping cost per order, and delayed deliveries.
- Compare carriers and regions to identify where service levels may need attention.
- Enable interactive exploration by date, region, city, product, carrier, and delivery status.

## Dashboard Preview

### 1. Delivery overview
![Delivery overview](screenshots/dashboard-1.png)

### 2. Carrier and regional analysis
![Carrier and regional analysis](screenshots/dashboard-2.png)

### 3. Order-level delivery details
![Order details](screenshots/dashboard-3.png)

## Key KPIs

| Metric | Dashboard value |
|---|---:|
| Total Orders | 1,700 |
| On-Time Delivery Rate | 84.56% |
| Average Delivery Days | 4.74 |
| Shipping Cost per Order | 12.78 |

*Values are taken from the overall dashboard view in the supplied report. Shipping cost currency is not independently verified.*

## Main Findings

- **Delivery performance:** 84.56% of delivered shipments are on time according to the dashboard measure. Improving timeliness is a potential operational priority.
- **Carrier comparison:** The dashboard supports comparing absolute delayed-order counts and shipping costs. Counts should not be treated as delay *rates* without considering each carrier's delivery volume.
- **Regional analysis:** On-time delivery differs across regions; the interactive carrier/region view helps identify combinations requiring investigation.
- **Costs:** Shipping cost per order varies by carrier, creating opportunities for a more detailed cost-versus-service comparison.

**Interpretation note:** The source business overview names specific best/worst carriers, but those statements are not fully supported by the unfiltered charts. The README therefore avoids unverified carrier rankings. The 74.19% Mountain and 82.05% South figures in the overview refer to a filtered carrier view, not the overall regional comparison.

## What I Implemented

- Three-page interactive Power BI report with KPI cards, trend charts, carrier comparisons, regional tables, and order-level detail.
- DAX measures for order counts, on-time rate, delivery duration, shipping costs, and delayed shipments.
- Power Query (M) steps for importing and transforming shipment files, including data typing, numeric normalization, and duplicate removal.

## Technologies

**Power BI Desktop · DAX · Power Query (M) · Data Modeling · Data Visualization · Logistics Analytics**

## Repository Structure

| File | Purpose |
|---|---|
| `HomeRoute_Delivery_Analytics.pbix` | Original interactive Power BI report (renamed for the portfolio) |
| `Dashboards.pdf` | Three-page dashboard export |
| `screenshots/` | Dashboard images displayed above |
| `code/measures.dax` | DAX formulas transcribed from the provided document |
| `code/power_query_shipments.m` | Shipment transformation query from the provided document |
| `code/POWER_QUERY_NOTE.md` | Source-path and query-validation caveats |
| `README_RU.md` | Russian-language project description |

## How to Open

1. Download `HomeRoute_Delivery_Analytics.pbix` and open it in **Power BI Desktop**.
2. Review the three report pages and interactive filters.
3. If refreshing the data, configure the data-source paths for your own environment. The source datasets are not included in this repository.
4. Without Power BI Desktop, view `Dashboards.pdf` or the screenshots above.

*The `.pbix` file has been preserved from the supplied project and was not independently executed or refreshed in this environment.*
