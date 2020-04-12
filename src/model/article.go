package model

import (
	"database/sql/driver"
	"fmt"
	"strconv"
	"time"
)

type Find struct {
	Article []Article
}

type Article struct {
	Id                  int       `gorm:"column:id"`
	Title               string    `gorm:"column:title"`
	Auth                string    `gorm:"column:auth"`
	Image               string    `gorm:"column:image"`
	Info                string    `gorm:"column:info"`
	Label               string    `gorm:"column:label"`
	Content             string    `gorm:"column:content"`
	Category_id         int       `gorm:"column:category_id"`
	Create_at           time.Time `gorm:"column:create_at"`
	Article_comment_num int       `gorm:"column:article_comment_num"`
}

type LocalTime struct {
	time.Time
}

func (t LocalTime) MarshalJSON() ([]byte, error) {
	//格式化秒
	seconds := t.Unix()
	return []byte(strconv.FormatInt(seconds, 10)), nil
}
func (t LocalTime) Value() (driver.Value, error) {
	var zeroTime time.Time
	if t.Time.UnixNano() == zeroTime.UnixNano() {
		return nil, nil
	}
	return t.Time, nil
}
func (t *LocalTime) Scan(v interface{}) error {
	value, ok := v.(time.Time)
	if ok {
		*t = LocalTime{Time: value}
		return nil
	}
	return fmt.Errorf("can not convert %v to timestamp", v)
}

//返回首页数据
//article:文章主体数据、 selectArticle:文章精选、 recoArticle:文章推荐、selectLabel文章标签、indexAbout:关于、indexContact：联系
func IndexArticle() (result Find) {
	var (
		article []Article
	)
	article = make([]Article, 100)

	G_db.Table("article").Select("id,title,auth,image,info,create_at").Where("article_status = '1'").Limit(3).Order("create_at desc").Scan(&article)

	result = Find{
		Article: article,
	}
	return
}

//返回文章详情页数据
func ArticleDetail(id int) (article *Article) {
	article = &Article{}
	G_db.Table("article").
		Select("article.id,article.title,article.auth,article.image,article.info,article.content,article.create_at,article_statistics.article_comment_num").
		Joins("left join article_statistics on article.id = article_statistics.id").
		Where("article.id = ?", id).
		Scan(article)
	fmt.Printf("文章详情:%#v\n", article)
	return
}
