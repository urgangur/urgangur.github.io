module Jekyll
  class PostReader
    # 覆寫以允許文章檔名沒有 YYYY-MM-DD- 前綴
    def read_posts(dir)
      read_publishable(dir, "_posts", /.*\.(markdown|md)$/)
    end

    def read_drafts(dir)
      read_publishable(dir, "_drafts", /.*\.(markdown|md)$/)
    end
  end
end
