package router

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"goweb-blog/src/config"
	"goweb-blog/src/controller"
	"net/http"
)

//文章首页数据
func ArticleIndex(c *gin.Context) {
	var (
		indexArticle controller.IndexMap
	)
	indexArticle = make(controller.IndexMap, 100)
	indexArticle = controller.GetIndexArticle()
	fmt.Printf("首页%v\n", indexArticle)
	c.HTML(http.StatusOK, "/index.html", indexArticle)
}

//自我简介
func About(c *gin.Context) {
	var (
		about gin.H
	)
	about = controller.GetAboutByme()
	c.HTML(http.StatusOK, "/about.html", about)
}

func InitWebHtml() (err error) {
	r := gin.Default()

	//1.静态资源文件加载
	r.LoadHTMLGlob(config.GetEnv().Static + "/templates/*")
	r.Static("css", config.GetEnv().Static+"/assets/css")
	r.Static("js", config.GetEnv().Static+"/assets/js")
	r.Static("img", config.GetEnv().Static+"/assets/img")

	//2.路由加载
	v1 := r.Group("/")
	{
		v1.GET("/", ArticleIndex)
		v1.GET("/index", ArticleIndex)
	}

	r.GET("/about", About)

	r.GET("/contact", func(c *gin.Context) {
		c.HTML(http.StatusOK, "/contact.html", nil)
	})

	r.GET("/single", func(c *gin.Context) {
		c.HTML(http.StatusOK, "/single.html", nil)
	})

	//3.运行
	r.Run(":" + config.GetEnv().ServerPort)

	return
}
