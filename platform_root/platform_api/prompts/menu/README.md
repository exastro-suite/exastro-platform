# Menu-specific System Prompts

このディレクトリには、ITA画面ID（menu_id）に対応した追加システムプロンプトファイルを配置します。

## ファイル命名規則

```
{menu_id}_{language}.txt
{menu_id}_base.txt
```

### 例
- `menu_001_base.txt` - Menu 001の基本プロンプト（言語非依存）
- `menu_001_jp.txt` - Menu 001の日本語プロンプト
- `menu_001_en.txt` - Menu 001の英語プロンプト
- `menu_002_base.txt` - Menu 002の基本プロンプト

## 使い方

1. **基本動作**: `service_id` でベースシステムプロンプトが選択される（既存機能）
2. **追加プロンプト**: APIリクエストで `menu_id` を指定すると、該当するメニュー用プロンプトがベースプロンプトに**追記**される
3. **言語対応**: ユーザー言語（platform-authが設定するLanguageヘッダー: ログイン画面で選択した言語）に応じて、言語別ファイルが追記される
   - `_base.txt` は必須（無い場合はそのメニューの追加プロンプト自体がスキップされる）
   - 言語別ファイル（`_jp.txt`, `_en.txt`）があれば `_base.txt` の後ろに追記される
4. **任意指定**: `menu_id` が指定されていない場合は、従来通り `service_id` のプロンプトのみが使用される

## プロンプトの構成

### service_id プロンプト（必須）
```
prompts/system/{service_id}_{language}.txt
```
- LLMEditor、AgenticAI などのサービス全体に適用される基本プロンプト
- 例: `llmeditor_jp.txt`, `agenticai_base.txt`

### menu_id プロンプト（任意・追加）
```
prompts/menu/{menu_id}_{language}.txt
```
- 特定のITA画面に固有の追加コンテキスト
- service_id プロンプトの**後ろに追記**される
- 例: `menu_001_jp.txt`, `menu_002_base.txt`

## 最終的なシステムプロンプト

```
[service_id プロンプト]

[menu_id プロンプト]  ← menu_id が指定された場合のみ追加
```

## API使用例

### menu_id なし（従来通り）
```bash
POST /api/{org_id}/platform/workspaces/{ws_id}/conversations/{conv_id}/messages
{
  "message": "設定画面の使い方を教えてください"
}
# → service_id のプロンプトのみ使用
```

### menu_id あり（追加コンテキスト付き）
```bash
POST /api/{org_id}/platform/workspaces/{ws_id}/conversations/{conv_id}/messages
{
  "message": "この画面で設定を変更する方法は？",
  "menu_id": "menu_001"
}
# → service_id + menu_001 のプロンプトを結合して使用
```

## プロンプトファイルの作成ガイドライン

1. **明確なコンテキスト**: 画面の目的、機能、よくあるタスクを記載
2. **ユーザー支援**: その画面でユーザーが直面する課題への対処方法
3. **ベストプラクティス**: その画面に関連する推奨事項
4. **簡潔さ**: 必要最小限の情報に絞る（ベースプロンプトと重複しない）

## 注意事項

- menu_id 用のファイルが存在しない場合は、エラーにならず単にスキップされる
- 言語ファイル、ベースファイルの両方が存在しない場合も、エラーにならない（警告ログのみ）
- プロンプトファイルは UTF-8 でエンコードすること
