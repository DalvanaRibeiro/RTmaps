USE informatech_PI;

CREATE TABLE IF NOT EXISTS risk_zones (
  id varchar(36) NOT NULL,
  name varchar(120) NOT NULL,
  description text NULL,
  latitude decimal(10,7) NOT NULL,
  longitude decimal(10,7) NOT NULL,
  radiusMeters int unsigned NOT NULL,
  riverLevelMeters decimal(6,2) NOT NULL DEFAULT 0,
  floodLevel varchar(20) NOT NULL,
  active tinyint(1) NOT NULL DEFAULT 1,
  createdBy varchar(36) NULL,
  createdAt datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updatedAt datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  INDEX IDX_risk_zones_createdBy (createdBy)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
