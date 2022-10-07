# 共通認証基盤javascript リファレンス

本内容は共通認証基盤を利用するためのjavascriptについて記載しています。

## 使用方法の概要
以下のサンプルで示した記述を参考にWebページに組み込みます。<br>
javascriptのファイルを組み込むと、自動的にページ読み込み後に認証を確認し、ログイン後に当該ページを表示します<br>

- サンプル
    ```html
    <script type="text/javascript" src="/_/common-auth/js/exastro-common-auth-config.js"></script>
    <script type="text/javascript" src="/_/common-auth/js/exastro-common-auth.js"></script>

    <script type="text/javascript">
        CommonAuth.onAuthSuccess(() => {
            // 認証完了後に実行する処理を記載します
            // このイベントが実行される前にtoken等を取得すると例外がThrowされます

            // ログインしたユーザ名を表示するサンプル
            alert(CommonAuth.getUserName());
        });

        // ボタン等のアクションでAPIを呼出す
        function buttonEvent() {
            if (!CommonAuth.isAuthenticated()) {
                // 認証処理がまだ完了していないのでSkipする
                return false;
            }
            // tokenの取得
            // ※ tokenは一定間隔で自動更新されていますので、API呼出の都度tokenを取得してください
            let token = CommonAuth.getToken();
            // APIの呼び出し
            // ...
        }
    </script>
    ```
- ファイルについて
    - exastro-common-auth-config.js<br>
        共通認証で使用する設定値等を定義しています
    - exastro-common-auth.js<br>
        共通認証使うための関数を定義しています

## リファレンス
アンダースコアで始まる名前のものは、内部処理用となりますので基本的には使用しないでください<br>

### CommonAuth.onAuthSuccess(onauthsuccess)
認証成功後のイベントを登録します<br>

- 用途<br>
    ログインユーザの情報を画面表示するときなどで使用します

- parameter
    - @param {function} onauthsuccess

- sample
    ```javascript
        CommonAuth.onAuthSuccess(() => {
            // 認証完了後に実行する処理を記載します
            alert(CommonAuth.getUserName());
        });
    ```

### CommonAuth.isAuthenticated()
認証されているかどうかを返します<br>

- parameter
    - @returns {boolean} true: Authenticated - 認証済み

### CommonAuth.getToken()
tokenを返します

- parameter
    - @returns {string} token

### CommonAuth.getUserId()
ユーザIDを返します<br>

- parameter
    - @returns {string} userid

### CommonAuth.getUserName()
ユーザ名を返します<br>
- parameter
    - @returns {string} username

### CommonAuth.getRoles()
ロールの一覧を返します<br>
- parameter
    - @returns {array} roles

### CommonAuth.getLanguage()
言語を返します<br>
- parameter
    - @returns {string} language

### CommonAuth.getRealm()
レルムを返します<br>
- parameter
    - @returns {string} realm

### CommonAuth.logout(redirectUri)
ログアウトします<br>
redirectUriを指定しない場合は、再ログイン後にTOP画面に遷移します
- parameter
    - @param {string} redirectUri - Optional param

### CommonAuth.refreshTokenForce()
tokenを強制的にリフレッシュします<br>
本functionはPromiseオブジェクトを返します

- 用途<br>
    ロールの最新化が必要な場合などで使用してください (※通常のケースでは使用しないでください)<br>
- parameter
    - @returns {Promise}
- sample
    ```javascript
        CommonAuth.refreshTokenForce().then(() => {
            // tokenをリフレッシュした後に実行する処理
        }).catch(() => {
            // tokenのリフレッシュに失敗した時の処理
        });
    ```

### ~~CommonAuth.isOrganizationManager()~~
廃止：オーガナイゼーション管理者か判定する<br>
※CommonAuth.hasAuthority(authority)で権限チェックを行うこと
- parameter
    - @returns true: OrganizationManager / false: other

### CommonAuth.hasAuthority(authority)
権限があるか判定する
- parameter
    - @param {string} authority
    - @returns {boolean}

### CommonAuth.getAccessibleWorkspaces()
アクセス可能なワークスペースを返します
- parameter
    - @returns {array} array of workspace_id

### CommonAuth.getAccessibleWorkspaces()
ワークスペース管理者検眼のあるワークスペースを返します
- parameter
    - @returns {array} array of workspace_id
