# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '2.0'
Rails.application.config.assets.precompile += %w( animate.css flexslider.css prettyPhoto.css theme.css style.css)
Rails.application.config.assets.precompile += %w( bootstrap.min.js  woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js  prettyPhoto_3.1.5/jquery.prettyPhoto.js  isotope/jquery.isotope.min.js  jquery.ui.totop.js  easing.js  wow.min.js  snap.svg-min.js  restart_theme.js  collapser.js google_analytics.js privy.js modernizr.js )

# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
