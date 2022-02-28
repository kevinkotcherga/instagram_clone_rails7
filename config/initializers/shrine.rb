require "cloudinary"
require "shrine/storage/cloudinary"
Cloudinary.config(
cloud_name: 'kevinkotcherga',
api_key:    '742943921543886',
api_secret: 'xSyXoiu6Xj4krk3ETbs4in_Q0ko',
)
Shrine.storages = {
cache: Shrine::Storage::Cloudinary.new(prefix: "instagram_app/cache"), # for direct uploads
store: Shrine::Storage::Cloudinary.new(prefix: "instagram_app"),
}
Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation_helpers
Shrine.plugin :validation
