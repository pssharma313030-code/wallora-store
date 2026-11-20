-- WALLORA V4: D1 catalogue schema
CREATE TABLE IF NOT EXISTS wallpapers (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  category TEXT NOT NULL,
  style TEXT NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  price INTEGER NOT NULL CHECK(price BETWEEN 29 AND 79),
  preview_key TEXT NOT NULL,
  download_key TEXT NOT NULL,
  rights_type TEXT NOT NULL CHECK(rights_type IN ('owned','licensed','commissioned')),
  rights_note TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'published' CHECK(status IN ('draft','published','hidden')),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_wallpapers_public ON wallpapers(status, category, created_at);
