package router

import (
	"github.com/gin-gonic/gin"
	"goweb-blog/src/config"
	"goweb-blog/src/controller"
	"goweb-blog/src/model"
	"goweb-blog/src/util"
	"html/template"
	"net/http"
	"strconv"
<<<<<<< HEAD
	"strings"
	"time"
=======
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
)

//文章首页数据
func ArticleIndex(c *gin.Context) {
	var articleIndexData model.Find
	articleIndexData = controller.GetIndexArticle()
	util.ResponseHtmlHandle(c, http.StatusOK, "/index.html", articleIndexData, "")
}

//文章详情页数据
func ArticleDetail(c *gin.Context) {
	var (
		articleDetail *model.Article
	)
	idTemp := c.Query("id")
	id, _ := strconv.Atoi(idTemp)
	articleDetail = controller.GetIndexArticleDetail(id)
<<<<<<< HEAD
=======
	fmt.Printf("文章详情数据为%v\n", articleDetail)
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
	util.ResponseHtmlHandle(c, http.StatusOK, "/single.html", articleDetail, "")
}

//自我简介
func About(c *gin.Context) {
	var about *model.Users
	about = controller.GetAboutByme()
	util.ResponseHtmlHandle(c, http.StatusOK, "/about.html", about, "")
}

<<<<<<< HEAD
//接收用户文章评论
func ArticleMessage(c *gin.Context) {
	var message *model.ArticleMessage
	message = new(model.ArticleMessage)
	message.Article_id, _ = strconv.Atoi(c.PostForm("a_id"))
	message.Nickname = c.PostForm("name")
	message.Email = c.PostForm("email")
	message.Message = c.PostForm("message")
	message.Create_at = time.Now().Format("2006-01-02 15:04:05")
	controller.SaveMemberArticleMessage(message)
	c.Request.URL.Path = strings.Join([]string{"/single?id=", strconv.Itoa(message.Article_id)}, "")

	c.Redirect(http.StatusMovedPermanently, "/single?id="+strconv.Itoa(message.Article_id))

}

=======
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
//初始化静态资源以及路由
func InitWebHtml() (err error) {
	r := gin.Default()
	r.SetFuncMap(template.FuncMap{
		"safe": func(str string) template.HTML {
			return template.HTML(str)
		},
	})
<<<<<<< HEAD

=======
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
	//1.静态资源文件加载
	r.LoadHTMLGlob(config.GetEnv().Static + "/templates/*")
	r.Static("css", config.GetEnv().Static+"/assets/css")
	r.Static("js", config.GetEnv().Static+"/assets/js")
	r.Static("img", config.GetEnv().Static+"/assets/img")

	//2.路由加载
	//首页
	v1 := r.Group("/")
	{
		v1.GET("/", ArticleIndex)
		v1.GET("/index", ArticleIndex)
	}

<<<<<<< HEAD
	//文章评论留言
	r.POST("/message", ArticleMessage)

	//作者简介
	r.GET("/about", About)

	//给作者留言
=======
	//作者
	r.GET("/about", About)

	//留言
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
	r.GET("/contact", func(c *gin.Context) {
		c.HTML(http.StatusOK, "/contact.html", nil)
	})

	//文章详情
	r.GET("/single", ArticleDetail)

	//3.运行
	r.Run(":" + config.GetEnv().ServerPort)

	return
}
