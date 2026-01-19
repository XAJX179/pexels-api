module Pexels
  module Client
    def self.get_collection(id: nil, page: 1, per_page: 1)
      HTTParty.get("https://api.pexels.com/v1/collections/#{id}?page=#{page}&per_page=#{per_page}",
                    headers: { "Authorization" => Rails.application.credentials.pexels_api_key })
    end
  end
end
