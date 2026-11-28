# リポジトリ概要

Trelloのカード詳細ダイアログを幅広く表示する、Manifest V3形式の小さなChrome拡張機能。JavaScript、バックグラウンドワーカー、ポップアップ、設定画面、依存ライブラリ、テストはない。`https://trello.com/*` を開くと、トップフレームへ `override.css` が自動的に適用される。

## ファイル構成

- `manifest.json`: 拡張機能のメタデータ、Trelloの対象URL、アイコン、CSSコンテンツスクリプトを定義する。
- `override.css`: 実装本体。カード詳細ダイアログを「画面幅から40pxを引いた幅」まで広げ、内部要素の `max-width` 制限を解除する。セレクターは意図的に `#trello-root` 以下のカード詳細ダイアログだけを対象としている。サイドパネルの幅は上書きせず、Trello標準のリサイズ機能を維持する。
- `icon-128x128.png`: 拡張機能とアクションのアイコン。
- `docs/screenshot.png`: カード詳細画面を幅広くした表示例。
- `CHANGELOG.md`: リリース履歴。主にTrello側のDOMやスタイル変更への追従を記録している。
- `Makefile`: `manifest.json`、`override.css`、`icon-128x128.png` を格納した配布用の `package.zip` を生成する。

`package.zip` は生成物でありGitの管理対象外なので、その内容を正として扱わないこと。
