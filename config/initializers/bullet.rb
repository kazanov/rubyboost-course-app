if Rails.env.development?
  Rails.application.config.after_initialize do
    Bullet.enable = false
    Bullet.alert = true
  #   Bullet.bullet_logger = true
  #   Bullet.console = true
  # #  Bullet.growl = true
  #   Bullet.rails_logger = true
  #   Bullet.add_footer = true
  end
end
