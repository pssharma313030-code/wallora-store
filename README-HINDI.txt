WALLORA V4 ZERO-R2 CATALOGUE BUILD

Is build mein R2 ya Cloudinary dependency nahi hai. D1 mein wallpaper metadata, category, price, image HTTPS URLs aur rights record store hote hain. Images ka upload/storage is build mein nahi hai; image URLs kisi aise HTTPS host se hone chahiye jiska use aur commercial distribution aapke licence ke tahat allowed ho.

Cloudflare setup (deployment se pehle):
1. Existing D1 database wallora-db use karein. Is package ka schema.sql wahi schema hai jo pehle create kiya gaya tha; ise dobara run karna safe hai.
2. wrangler.toml mein database_id ko apne D1 database ID se replace karein.
3. Cloudflare Worker secrets set karein: ADMIN_PASSWORD (strong password), ADMIN_SECRET (random secret at least 32 chars).
4. Worker bindings mein D1 binding name DB set karein; static assets binding ASSETS. wrangler.toml iske liye template hai.
5. Deploy Worker with assets. Mobile Cloudflare dashboard file upload may not support this full Worker configuration; use dashboard's supported Worker editor or Wrangler environment.

Admin: website ke Admin button par click karke ADMIN_PASSWORD se login.
Add record fields: title/category/style/price/preview HTTPS URL/download HTTPS URL/rights type/rights record/status.

Limitations:
- No R2, no persistent image upload, no payment, no QR, no automatic checkout.
- Preview/download URLs are external links and can be public. Do not use this approach for paid originals until protected delivery and payment approval are implemented.
- Admin API currently supports add/list/delete; edit and upload binaries are not implemented.
- Text Studio is preview-only; image export not implemented.
- Legal pages are not complete; footer notice is not a substitute for legal review.
- Do not publish artwork unless you own it or have documented commercial rights. Avoid unlicensed copyrighted characters, logos and branded artwork.
