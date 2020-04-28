package main

import (
	"goweb-blog/src/model"
	"goweb-blog/src/router"
	"time"
)

func main() {

	//加载静态资源
	go router.InitWebHtml()
	//加载模型配置文件
	go model.InitModel()

	for {
		time.Sleep(500 * time.Second)
	}
}
