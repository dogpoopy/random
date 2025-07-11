.class public Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;
.super Ljava/lang/Object;
.source "ShareImpl.java"


# instance fields
.field private handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mClientKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->handlers:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mClientKey:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->handlers:Ljava/util/List;

    new-instance p2, Lcom/bytedance/sdk/open/tiktok/share/ShareDataHandler;

    invoke-direct {p2}, Lcom/bytedance/sdk/open/tiktok/share/ShareDataHandler;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.ss.android.ugc.aweme."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/open/tiktok/share/Share$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 42
    :cond_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->checkArgs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 46
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p5}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->getPlatformSDKVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    const/4 v2, 0x3

    if-lt p5, v2, :cond_2

    .line 50
    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->toBundle(Landroid/os/Bundle;)V

    :cond_2
    const-string p5, "_aweme_open_sdk_params_client_key"

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mClientKey:Ljava/lang/String;

    invoke-virtual {v0, p5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "_aweme_open_sdk_params_caller_package"

    .line 53
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "_aweme_open_sdk_params_caller_sdk_version"

    const-string v2, "1"

    .line 54
    invoke-virtual {v0, p5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p5, p4, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->callerLocalEntry:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "_aweme_open_sdk_params_caller_local_entry"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    iget-object p1, p4, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string p1, "_bytedance_params_extra"

    .line 60
    iget-object p4, p4, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    const-string p1, "_aweme_params_caller_open_sdk_name"

    .line 62
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_aweme_params_caller_open_sdk_version"

    .line 63
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 66
    new-instance p4, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    const p3, 0x8000

    if-eqz p2, :cond_5

    .line 72
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const/high16 p2, 0x10000000

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1

    :cond_6
    :goto_1
    return v1
.end method
