# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

# greetingComponentの作成
## 参考URL
https://trailhead.salesforce.com/ja/content/learn/modules/sfdx_app_dev

## 対象スクラッチ組織のログイン情報
ユーザー：test-cbgv9xdakan2@example.com  
パスワード：ebiJgm5uyz)zx

## config/project-scratch-def.jsonの編集
* 組織名をデフォルトのものから「GreetingComponentOrg」へ変更する

## スクラッチ組織の生成

* スクラッチ組織を作成する
以下コマンドを実行  
`sfdx force:org:create -s -f config/project-scratch-def.json -a GreetingAppScratchOrg`  
成功  
`Successfully created scratch org: 00D0w0000001DLsEAM, username: test-cbgv9xdakan2@example.com`
* ちなみに削除するとき  
  以下コマンドを実行  
  `sfdx force:org:delete --targetusername test-cbgv9xdakan2@example.com`  
  成功
  `Successfully marked scratch org test-cbgv9xdakan2@example.com`

## スクラッチ組織にログインしてみる
* ユーザー一覧を確認する  
  以下のコマンドを実行する  
  `sfdx force:user:display --targetusername test-cbgv9xdakan2@example.com`  
  一覧が表示される  
  `Username      test-cbgv9xdakan2@example.com
  Profile Name  システム管理者
  Id            0050w000003VVCEAA4
  Org Id        00D0w0000001DLsEAM
  Access Token  00D0w0000001DLs!AQwAQJhMP5D49m38rZaDBU1YXuQHHxCCw11FXvFDxLq6rvKa6rAc58bI79.LpCxX6qX0oC4bKp6wlMh9clX3qyTUfLCXRPe3
  Instance Url  https://innovation-agility-2120-dev-ed.cs75.my.salesforce.com
  Login Url     https://CS75.salesforce.com
  Alias         GreetingAppScratchOrg`


* まずはスクラッチ組織のパスワードを設定する  
以下のコマンドを実行する  
`sfdx force:user:password:generate --targetusername test-cbgv9xdakan2@example.com`  
成功  
`Successfully set the password "ebiJgm5uyz)zx" for user test-cbgv9xdakan2@example.com.
You can see the password again by running "sfdx force:user:display -u test-cbgv9xdakan2@example.com".`  

* ログインしてみる  
  以下のコマンドを実行する  
`sfdx force:auth:web:login -d -a test-cbgv9xdakan2@example.com`  
失敗 listで出したInstance Urlからのログインが成功したのでそのまま作業を続ける

## Lwcコンポーネント作ってみる
* LWCコンポーネントの作成  
  以下のコマンドを実行  
  `sfdx force:lightning:component:create --type lwc -n greetingComponent -d force-app/main/default\lwc`  
  成功  
  `target dir = C:\Users\yushin\Documents\Salesforce\greetingComponent\force-app\main\default\lwc
   create force-app\main\default\lwc\greetingComponent\greetingComponent.js
   create force-app\main\default\lwc\greetingComponent\greetingComponent.html
   create force-app\main\default\lwc\greetingComponent\greetingComponent.js-meta.xml`


sfdx force:source:deploy -m ApexClass -u test-cbgv9xdakan2@example.com

sfdx force:source:deploy -m LightningComponentBundle -u test-cbgv9xdakan2@example.com