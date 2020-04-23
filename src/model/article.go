package model

import (
	"database/sql/driver"
	"errors"
	"fmt"
	"github.com/jinzhu/gorm"
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
	Article_message     []ArticleMessage
}

type LocalTime struct {
	time.Time
}

type ArticleMessage struct {
	Id         int    `gorm:"column:id"`
	Article_id int    `gorm:"column:article_id"`
	Nickname   string `gorm:"column:nickname"`
	Email      string `gorm:"column:email"`
	Message    string `gorm:"column:message"`
	Create_at  string `gorm:"column:create_at"`
}

type AuthMessage struct {
	Id         int    `gorm:"column:id"`
	Nickname   string `gorm:"column:nickname"`
	Email      string `gorm:"column:email"`
	Message    string `gorm:"column:message"`
	Create_at  string `gorm:"column:create_at"`
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

	G_db.Table("article").Select("id,title,auth,image,info,create_at").Where("article_status = '1'").Limit(6).Order("create_at desc").Scan(&article)

	result = Find{
		Article: article,
	}
	return
}

//返回首页标签文章数据
func IndexArticleLabel(label string) (result Find) {
	var (
		article []Article
	)
	article = make([]Article, 100)

	G_db.Table("article").Select("id,title,auth,image,info,create_at").Where("article_status = '1' AND label IN (?)",[]string{label}).Limit(6).Order("create_at desc").Scan(&article)

	result = Find{
		Article: article,
	}
	return
}

//返回查找文章数据
func IndexArticleSearch(search string) (result Find) {
	var (
		article []Article
	)
	article = make([]Article, 100)

	G_db.Table("article").Select("id,title,auth,image,info,create_at").
		Where("article_status = '1'").Where( "title regexp  ? OR info regexp ? OR content regexp ?",search ,search ,search ).
		Limit(6).Order("create_at desc").Scan(&article)

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
		Scan(&article)
	var (
		article_message []ArticleMessage
	)
	article_message = make([]ArticleMessage, 100)
	article.Article_message = article_message
	G_db.Table("article_message").Select("id,nickname,message,create_at").Where("article_id = ?", article.Id).Order("create_at desc").Limit(8).Scan(&article.Article_message)
	//更新文章浏览数
	G_db.Table("article_statistics").Where("id = ?", article.Id).Update("article_browse_num", gorm.Expr("article_browse_num + ?", 1)).
		Scan(article)
	fmt.Printf("文章详情:%#v\n", article)
	return
}

//保存用户文章评论数据
func SaveArticMessage(message *ArticleMessage) interface{} {
	create := G_db.Table("article_message").Create(&message)
	//更新文章评论数
	G_db.Table("article_statistics").Where("id = ?", message.Article_id).Update("article_comment_num", gorm.Expr("article_comment_num + ?", 1))
	return create
}

//用户留言
func SaveUserMessageByAuth(userMessage *AuthMessage)error{
	err := G_db.Table("article_user_message").Create(&userMessage)
	if err.Error != nil{
      return errors.New("用户留言失败")
	}
	return nil
}
