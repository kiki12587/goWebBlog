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
	"strings"
	"time"
)

//文章首页数据
func ArticleIndex(c *gin.Context) {
	var articleIndexData model.Find
	lable := c.Query("lable")
	search := c.Query("search")

    if len(lable) != 0{
		articleIndexData = controller.GetIndexArticleLabel(lable)
	}else
	if len(search) !=0{
		articleIndexData = controller.GetIndexArticleSearch(search)
	}else{
		articleIndexData = controller.GetIndexArticle()
	}

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
	util.ResponseHtmlHandle(c, http.StatusOK, "/single.html", articleDetail, "")
}

//自我简介
func About(c *gin.Context) {
	var about *model.Users
	about = controller.GetAboutByme()
	util.ResponseHtmlHandle(c, http.StatusOK, "/about.html", about, "")
}

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

//接收用户对作者的留言
func UserMessage(c *gin.Context){
	var message *model.AuthMessage
	message = new(model.AuthMessage)
	message.Nickname = c.PostForm("name")
	message.Email = c.PostForm("email")
	message.Message = c.PostForm("message")
	message.Create_at = time.Now().Format("2006-01-02 15:04:05")
	err:=controller.SaveUserMessageByMy(message)
    if err !=nil{
    	c.JSON(http.StatusOK,gin.H{
    		"code" : 0,
    		"message":err,
		})
	}else {
		c.JSON(http.StatusOK,gin.H{
			"code" : 1,
			"message":"感谢你的留言哦 么么哒",
		})
	}

}

//初始化静态资源以及路由
func InitWebHtml() (err error) {
	r := gin.Default()

	//防止字符被转义
	r.SetFuncMap(template.FuncMap{
		"safe": func(str string) template.HTML {
			return template.HTML(str)
		},
	})

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

	//文章评论留言
	r.POST("/message", ArticleMessage)

	//作者简介
	r.GET("/about", About)

	//留言
	r.GET("/contact", func(c *gin.Context) {
      c.HTML(http.StatusOK,"/contact.html",nil)
	})

	r.POST("/contact", UserMessage)

	//文章详情
	r.GET("/single", ArticleDetail)

	//3.运行
	r.Run(":" + config.GetEnv().ServerPort)

	return
}
