--create fact tables and dimension table from the finance dataset


drop table if exists dim_date;
CREATE TABLE dim_date AS
SELECT
    d::date                                   AS date_id,
    d::date                                   AS full_date,

    EXTRACT(YEAR FROM d)::int                 AS year,
    EXTRACT(QUARTER FROM d)::int              AS quarter,

    EXTRACT(MONTH FROM d)::int                AS month_num,
    INITCAP(TO_CHAR(d, 'month'))              AS month,

    EXTRACT(DAY FROM d)::int                  AS day_of_month,
    INITCAP(TO_CHAR(d, 'day'))                AS weekday,

    CASE
        WHEN EXTRACT(ISODOW FROM d) IN (6,7) THEN 'Weekend'
        ELSE 'Weekday'
    END                                       AS day_type
FROM generate_series(
        (SELECT MIN("Date")::date FROM finance),
        (SELECT MAX("Date")::date FROM finance),
        INTERVAL '1 day'
     ) AS d;
