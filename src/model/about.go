package model

import (
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

type Users struct {
	Id      int    `gorm:"column:id"`
	Content string `gorm:"column:content"`
}

func MyAbout() Users {

	//var (
	//	about map[string]interface{}
	//)
	users := Users{}
	G_db.Table("users").Select("id,content").Scan(&users)
	return users
}
