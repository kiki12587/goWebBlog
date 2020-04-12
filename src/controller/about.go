package controller

import (
	"goweb-blog/src/model"
)

//获取自我介绍
func GetAboutByme() (data *model.Users) {
	data = model.MyAbout()
	return
}
