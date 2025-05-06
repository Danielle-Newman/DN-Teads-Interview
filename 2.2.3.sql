SELECT 
    a.advertiser_id,
    c.campaign_id,
    c.campaign_name,
    SUM(IFNULL(am.impressions, 0)) AS total_impressions,
    SUM(IFNULL(am.clicks, 0)) AS total_clicks,
    SUM(IFNULL(am.spend, 0)) AS total_spend
FROM Advertisers a
LEFT JOIN Campaigns c ON a.advertiser_id = c.advertiser_id
LEFT JOIN AdMetrics am ON c.campaign_id = am.campaign_id
WHERE a.advertiser_id IN ('ADV-111', 'ADV-222', 'ADV-333');
GROUP BY a.advertiser_id, c.campaign_id, c.campaign_name
ORDER BY total_impressions DESC, total_clicks DESC;
