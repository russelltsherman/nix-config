{ pkgs, ... }:

{

  enable = true;
  autoReload = true;
  browser = "\${pkgs.xdg-utils}/bin/xdg-open";
  extraConfig = ''
  '';
  maxItems = 0;
  queries = {
    # foo = ''rssurl =~ "example.com"'';
  };
  reloadThreads = 5;
  reloadTime = 60;
  urls = [
    {
      tags = [ "foo" "bar" ];
      url = "http://example.com";
    }
  ];

}

# # Blogs
# https://blog.alexellis.io/rss/ "Alex Ellis" blog
# https://danielmiessler.com/feed/ "Daniel Miessler" blog
# http://lukesmith.xyz/rss.xml "Luke Smith" blog
# https://blog.jessfraz.com/index.xml "Jessie Frazelle" blog
# https://dave.cheney.net/feed/atom "Dave Cheny" blog

# # (Other)
# https://newsboat.org/news.atom
# https://www.artofmanliness.com/rss
# https://hackernoon.com/feed?ref=hackernoon.com

# # Podcasts
# https://notrelated.libsyn.com/rss "Luke Smith" podcast

# # (Reddit)
# https://www.reddit.com/r/commandline.rss reddit
# https://www.reddit.com/r/Jokes.rss reddit
# https://www.reddit.com/r/puns.rss reddit
# https://www.reddit.com/r/programmerhumor.rss reddit
# https://www.reddit.com/r/vim.rss reddit
# https://www.reddit.com/r/vimplugins.rss reddit
# https://www.reddit.com/r/vim_magic.rss reddit

# # (Twitter)
# http://twitrss.me/twitter_user_to_rss/?user=alexellisuk
# http://twitrss.me/twitter_user_to_rss/?user=jessfraz
# http://twitrss.me/twitter_user_to_rss/?user=davecheney

# # (Youtube)
# https://www.youtube.com/feeds/videos.xml?channel_id=UCJsK5Zbq0dyFZUBtMTHzxjQ "Alex Ellis" youtube
# https://www.youtube.com/feeds/videos.xml?channel_id=UCVls1GmFKf6WlTraIb_IaJg youtube DistroTube
# https://www.youtube.com/feeds/videos.xml?channel_id=UC17mJJnvzAa_e9qQqLIfIeQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UC2gyzKcHbYfqoXA5xbyGXtQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UC3s0BtrBJpwNDaflRSoiieQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UC4aOa6Q-cHMXaNixIi26q3Q
# https://www.youtube.com/feeds/videos.xml?channel_id=UC6Om9kAkl32dWlDSNlDS9Iw
# https://www.youtube.com/feeds/videos.xml?channel_id=UC76AVf2JkrwjxNKMuPpscHQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UC8ENHE5xdFSwx71u3fDH5Xw
# https://www.youtube.com/feeds/videos.xml?channel_id=UC9Lfb5wvuqFXaEiEJtJYAYg
# https://www.youtube.com/feeds/videos.xml?channel_id=UC9TM3Lrth8MQjHrttZJZiEw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCD-QkofF-bFBAcI83U8ZZeg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCElzlyMtkoXaO3kFa5HL0Xw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCFPi0bIn4Bc3Vkd9T-dKuzw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCHkYOD-3fZbuGhwsADBd9ZQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCI6ASwT150rendNc5ytYYrQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCJ_mRUbnlNM4DVfj2uAqkgg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCJdmdUp5BrsWsYVQUylCMLg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCJsssI5tflDr-j-2d5LTpkA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCLHAxAdvAKJY0niRJZRYMvg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCLIVw72hh1PLYZJx7Svi5iQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCLRDaR2ywG1APiwUzeTwrJw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCLecVrux63S6aYiErxdiy4w
# https://www.youtube.com/feeds/videos.xml?channel_id=UCMrMVIBtqFW6O0-MWq26gqw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCRDQEDxAVuxcsyeEoOpSoRA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCRLC9X8d_iDqUzhA_aCnTgA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCS97tchJDq17Qms3cux8wcA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCSBUwLT9zXhUalKfJrc2q2A
# https://www.youtube.com/feeds/videos.xml?channel_id=UCSLIvjWJwLRQze9Pn4cectQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCWh6YtclgTAzReTASc4uSKw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCXuqSBlHAE6Xw-yeJA0Tunw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCYVMnw_W7-Rq-yJk80vprug
# https://www.youtube.com/feeds/videos.xml?channel_id=UCZDA1kA3y3EIg25BpcHSpwQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UC_x5XG1OV2P6uZZ5FSM9Ttw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCcMfCkN1juSa49DJFYltOTw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCcuLSr4UhAU8Rdegc264srg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCd6MoB9NC6uYN2grvUNT-Zg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCfhSB16X9MXhzSFe_H7XbHg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCg6gPGh8HU2U01vaFCAsvmQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCgTNupxATBfWmfehv21ym-g
# https://www.youtube.com/feeds/videos.xml?channel_id=UCiDJtJKMICpb9B1qf7qjEOA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCiRYn1OSRv2bvU3enNwoZxg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCj4SLNED1DiNPHComZTCbzw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCl2mFZoRqjw_ELax4Yisf6w
# https://www.youtube.com/feeds/videos.xml?channel_id=UCm5sG3-BXQZfVy3st2T_XKg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCm9K6rby98W8JigLoZOh6FQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCmHvGf00GDuPYG9DZqQKd9A
# https://www.youtube.com/feeds/videos.xml?channel_id=UCnUYZLuoy1rq1aVMwx4aTzw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCp3yVOm6A55nx65STpm3tXQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCp4M48d5yNW0hFk71yejeVw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCp8lLM2JP_1pv6E0NQ38pqw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCpOlOeQjj7EsVnDh3zuCgsA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCp_5PO66faM4dBFbFFBdPSQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCqFzWxSCi39LnW1JKFR3efg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCqlcVgk8SkUmve4Kw4xSlgw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCr-cm90DwFJC0W3f9jBs5jA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCr3bBtP-pMsDQ5c0IDjt_LQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCrjKdwxaQMSV_NDywgKXVmw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCtaykeSsGhtn2o2BsPm-rsw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCu7_D0o48KbfhpEohoP7YSQ
# https://www.youtube.com/feeds/videos.xml?channel_id=UCuXy5tCgEninup9cGplbiFw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCvrLvII5oxSWEMEkszrxXEA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCxIvwIXi5uty__oLSTTGKlg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCxr2d4As312LulcajAkKJYw
# https://www.youtube.com/feeds/videos.xml?channel_id=UCyNxB2aBBEZxzqfoXK5UPcA
# https://www.youtube.com/feeds/videos.xml?channel_id=UCzNAswnSN0rZy79clU-DRPg
# https://www.youtube.com/feeds/videos.xml?channel_id=UCzQrtnJLZaH09xyZ1oKNq7Q
# https://www.youtube.com/feeds/videos.xml?channel_id=UCzR-rom72PHN9Zg7RML9EbA
