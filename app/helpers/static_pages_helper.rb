module StaticPagesHelper
  def image_link(res)
    res.dig("media", 0, "src", "medium")
  end

  def next_page(res)
    url = res["next_page"]
    page = Rack::Utils.parse_nested_query(url.split("?").last)["page"]
    home_path(collection_id: res["id"], page: page)
  end

  def prev_page(res)
    url = res["prev_page"]
    page = Rack::Utils.parse_nested_query(url.split("?").last)["page"]
    home_path(collection_id: res["id"], page: page)
  end
end
