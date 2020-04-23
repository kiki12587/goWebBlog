package controller

import (
	"goweb-blog/src/model"
)

//处理首页数据
func GetIndexArticle() (ArticleIndexData model.Find) {
	ArticleIndexData = model.IndexArticle()
	return
}

//处理首页标签数据
func GetIndexArticleLabel(lable string)(ArticleIndexData model.Find) {
	ArticleIndexData = model.IndexArticleLabel(lable)
	return
}


//处理查询数据
func GetIndexArticleSearch(search string)(ArticleIndexData model.Find) {
	ArticleIndexData = model.IndexArticleSearch(search)
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
}

func SaveUserMessageByMy(message *model.AuthMessage) error {
	UserMessage := model.SaveUserMessageByAuth(message)
	return UserMessage
}





