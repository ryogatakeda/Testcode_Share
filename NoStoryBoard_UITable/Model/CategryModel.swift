import Foundation
import RealmSwift

//収支カテゴリー
//↓↓テーブル構成↓↓
//categry:収支カテゴリ・・・Categryテーブルで詳細を管理
//lastUpdate:最終更新日時・・・UTC標準時で管理　dateformaterで日本時刻に戻して使用
class CategryModel: Object {
    @objc dynamic var categry:Categry?
    @objc dynamic var lastUpdate = Date()
}

//収支カテゴリーリスト
//↓↓テーブル構成↓↓
//name:収支カテゴリ名称
//lastUpdate:最終更新日時・・・UTC標準時で管理　dateformaterで日本時刻に戻して使用
class Categry: Object {
    @objc dynamic var name = ""
    @objc dynamic var lastUpdate = Date()
}
