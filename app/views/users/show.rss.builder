xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "#{@user.name.possessive} Microposts"
    xml.description "User Microposts"
    xml.link user_url(@user, :rss)
    @microposts.each_with_index do |micropost, n|
      xml.item do
        xml.title "micropost #{n+1}"
        xml.description micropost.content
        xml.pubDate micropost.created_at.to_s(:rfc822)
      end
    end
  end
end