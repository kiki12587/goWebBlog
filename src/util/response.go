package util

import (
<<<<<<< HEAD
=======
	"fmt"
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
	"github.com/gin-gonic/gin"
	"goweb-blog/src/config"
	"goweb-blog/src/model"
)

//公共站点信息
type SiteInfo struct {
	Personal_introduction string `gorm:"column:personal_introduction"`
	Contact               string `gorm:"column:contact"`
	About                 string `gorm:"column:about"`
}

//公共最近贴文
type RecentPost struct {
	Id    int    `gorm:"column:id"`
	Title string `gorm:"column:title"`
}

type SelectArticle struct {
	Id    int    `gorm:"column:id"`
	Title string `gorm:"column:title"`
}

type SelectLabel struct {
	Id         int    `gorm:"column:id"`
	Label_name string `gorm:"column:label_name"`
}

var (
	c          *gin.Context
	publicResp map[string]interface{}
)

//Html公共返回
func ResponseHtmlHandle(c *gin.Context, status int, url string, data interface{}, imageAddr string) {

	var (
		indexAbout    SiteInfo     //footer 关于
		indexContact  SiteInfo     //footer 联系
		recentPosts   []RecentPost //最近贴文
		selectArticle []SelectArticle
		recoArticle   []SelectArticle
		selectLabel   []SelectLabel
	)
	recentPosts = make([]RecentPost, 100)
	selectArticle = make([]SelectArticle, 100)
	recoArticle = make([]SelectArticle, 100)
	selectLabel = make([]SelectLabel, 100)

	model.G_db.Table("users").Select("about").Scan(&indexAbout)
	model.G_db.Table("users").Select("contact").Scan(&indexContact)
	model.G_db.Table("article").Select("id,title").Where("article_status = '1'").Order("create_at desc").Limit(6).Scan(&recentPosts)
	model.G_db.Table("article").Select("id,title").Where("selected_articles_status = '1' and article_status = '1'").Limit(6).Order("create_at desc").Scan(&selectArticle)

	model.G_db.Table("article").Select("id,title").Where("selected_articles_status = '1' and article_status = '1'").Limit(6).Order("create_at desc").Scan(&recoArticle)
	model.G_db.Table("article_label").Select("id,label_name").Order("id desc").Scan(&selectLabel)

<<<<<<< HEAD
=======
	fmt.Printf("%#v\n", recentPosts)
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
	if imageAddr == "" {
		imageAddr = config.GetEnv().ImageAddr
	}

	publicResp = map[string]interface{}{
		"Data":          data,
		"ImageAddr":     imageAddr,
		"IndexAbout":    indexAbout,
		"IndexContact":  indexContact,
		"RecentPosts":   recentPosts,
		"SelectArticle": selectArticle,
		"RecoArticle":   recoArticle,
		"SelectLabel":   selectLabel,
	}
	c.Header("Content-Type", "text/html; charset=utf-8")
	c.HTML(status, url, publicResp)
}
<<<<<<< HEAD

//Api返回
=======
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
