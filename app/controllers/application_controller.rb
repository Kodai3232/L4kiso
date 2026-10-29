class ApplicationController < ActionController::Base
  # Codespacesなどの開発環境におけるCSRF/Originエラー回避
  skip_before_action :verify_authenticity_token, if: -> { Rails.env.development? }
end