package controller

import (
	"goweb-blog/src/model"
)

//处理首页数据
func GetIndexArticle() (ArticleIndexData model.Find) {
	ArticleIndexData = model.IndexArticle()
<<<<<<< HEAD
	return
}

//详情页数据
func GetIndexArticleDetail(id int) (ArticleDetailData *model.Article) {
	ArticleDetailData = &model.Article{}
	ArticleDetailData = model.ArticleDetail(id)
	return
}

//保存用户留言数据
func SaveMemberArticleMessage(message *model.ArticleMessage) interface{} {
	articleMessage := model.SaveArticMessage(message)
	return articleMessage
=======
	return
}

//详情页数据
func GetIndexArticleDetail(id int) (ArticleDetailData *model.Article) {
	ArticleDetailData = &model.Article{}
	ArticleDetailData = model.ArticleDetail(id)
	fmt.Printf("控制器:%v\n", ArticleDetailData)
	return
>>>>>>> 6d3487cdaa9580fd5e4704d65613426a1f67018f
}
