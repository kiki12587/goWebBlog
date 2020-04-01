package model

type Article struct {
	Id          int    `gorm:"column:id"`
	Title       string `gorm:"column:title"`
	Auth        string `gorm:"column:auth"`
	Image       string `gorm:"column:image"`
	Info        string `gorm:"column:info"`
	Label       string `gorm:"column:label"`
	Content     string `gorm:"column:content"`
	Category_id int    `gorm:"column:category_id"`
	Create_at   string `gorm:"column:create_at"`
}

type SelectArticle struct {
	Id    int    `gorm:"column:id"`
	Title string `gorm:"column:title"`
}

type SelectLabel struct {
	Id    int    `gorm:"column:id"`
	Label string `gorm:"column:label"`
}

type SiteInfo struct {
	Personal_introduction string `gorm:"column:personal_introduction"`
	Contact               string `gorm:"column:contact"`
	About                 string `gorm:"column:about"`
}

//返回首页数据
//article:文章主体数据、 selectArticle:文章精选、 recoArticle:文章推荐、selectLabel文章标签、indexAbout:关于、indexContact：联系
func IndexArticle() (
	article []Article,
	selectArticle []SelectArticle,
	recoArticle []SelectArticle,
	selectLabel []SelectLabel,
	indexAbout SiteInfo,
	indexContact SiteInfo) {

	article = make([]Article, 100)
	selectArticle = make([]SelectArticle, 100)
	recoArticle = make([]SelectArticle, 100)
	selectLabel = make([]SelectLabel, 100)

	G_db.Debug().Table("article").Select("id,title,auth,image,info").Where("article_status = '1'").Limit(3).Order("create_at desc").Scan(&article)
	G_db.Debug().Table("article").Select("id,title").Where("selected_articles_status = '1' and article_status = '1'").Limit(6).Order("create_at desc").Scan(&selectArticle)
	G_db.Debug().Table("article").Select("id,title").Where("selected_articles_status = '1' and article_status = '1'").Limit(6).Order("create_at desc").Scan(&recoArticle)
	G_db.Debug().Table("users").Find("about").Scan(indexAbout)
	G_db.Debug().Table("users").Find("contact").Scan(indexContact)
	return
}
