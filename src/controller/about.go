package controller

import (
	"github.com/gin-gonic/gin"
	"goweb-blog/src/model"
)

//获取自我介绍
func GetAboutByme() (data gin.H) {
	var (
		user model.Users
	)
	data = make(gin.H, 100)
	user = model.MyAbout()
	data = gin.H{
		"about": user.Content,
	}
	return
}
