package model

import (
	"fmt"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

type Users struct {
	Id       int    `gorm:"column:id"`
	Personal string `gorm:"column:personal"`
}

func MyAbout() *Users {
	users := &Users{}
	G_db.Debug().Table("users").Select("id,personal").Scan(users)
	fmt.Printf("%#v\n", users)
	return users
}
