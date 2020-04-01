package controller

import (
	"fmt"
	"goweb-blog/src/model"
)

type IndexMap map[int]interface{}
type Article []model.Article

var (
	articleType  Article
	indexArticle IndexMap
)

//获取首页精选文章四篇
func GetIndexArticle() (indexArticle IndexMap) {
	articleType = make(Article, 1000)

	indexArticle = make(IndexMap, 1000)

	articleType = model.IndexArticle()
	fmt.Printf("map:结构体数据：%v\n", articleType)
	for i, v := range articleType {
		indexArticle[i] = v
	}

	//fmt.Printf("map数据为：%#v\n", indexArticle)
	fmt.Printf("map:数据%v\n", indexArticle)
	return

}
