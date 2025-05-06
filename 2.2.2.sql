SELECT campaign_id, device_type, IF(clicks  = 0 OR spend = 0, NULL, (spend / clicks)) AS cpc
FROM AdMetrics
WHERE campaign_id IN ('CID-ABC111', 'CID-ABC222', 'CID-ABC333')
AND report_date BETWEEN '2025-04-01' AND '2025-04-30';