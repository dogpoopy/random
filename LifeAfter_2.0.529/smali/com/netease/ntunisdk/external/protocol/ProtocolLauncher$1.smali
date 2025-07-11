.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "gameLauncherActivity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$002(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " gameLauncherActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    const-string v2, "protocol_launcher.json"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    const-string v3, "protocol_issuer_name"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    const-string v3, "https://protocol.unisdk.netease.com/release/latest_v89.json"

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gameName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setGameName(Ljava/lang/String;)V

    .line 119
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "url"

    .line 120
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrl(Ljava/lang/String;)V

    :cond_2
    const-string v0, "urlType"

    .line 125
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setUrlType(Ljava/lang/String;)V

    :cond_3
    const-string v0, "offlineGameFlag"

    .line 130
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setOfflineGameFlag(Ljava/lang/String;)V

    :cond_4
    const-string v0, "newOfflineFlag"

    .line 135
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 137
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setNewOfflineFlag(Ljava/lang/String;)V

    :cond_5
    const-string v0, "showTitleFlag"

    .line 140
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 142
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowTitleFlag(Ljava/lang/String;)V

    :cond_6
    const-string v0, "showAgreeLineFlag"

    .line 145
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 147
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setShowAgreeLineFlag(Ljava/lang/String;)V

    :cond_7
    const-string v0, "agreeLineText"

    .line 150
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 152
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setAgreeLineText(Ljava/lang/String;)V

    :cond_8
    const-string v0, "locale"

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 162
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setLocale(Ljava/lang/String;)V

    :cond_9
    const-string v0, "issuer"

    .line 165
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 167
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->setIssuer(Ljava/lang/String;)V

    .line 170
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch issuer : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 180
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setActivity(Landroid/app/Activity;)V

    .line 182
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V

    .line 183
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->hasAcceptLaunchProtocol()Z

    move-result v0

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
