package controller

import (
	"fmt"
	"goweb-blog/src/model"
)

//处理首页数据
func GetIndexArticle() (ArticleIndexData model.Find) {
	ArticleIndexData = model.IndexArticle()
	return
}

//详情页数据
func GetIndexArticleDetail(id int) (ArticleDetailData *model.Article) {
	ArticleDetailData = &model.Article{}
	ArticleDetailData = model.ArticleDetail(id)
	fmt.Printf("控制器:%v\n", ArticleDetailData)
	return
}
