.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized loginDone(I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "UniSDK AuthLogin"

    const-string v1, "loginDone, code = %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0, v5}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$002(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Z)Z

    if-nez p1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$100(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 53
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$400(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->loginDone(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->isHasLogin()Z

    move-result v0

    .line 58
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getLastUid()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "UIN"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UniSDK AuthLogin"

    .line 60
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "loginDone:%d, lastUid:%s, currentUid:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v5

    aput-object v1, v8, v2

    const/4 p1, 0x2

    aput-object v3, v8, p1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 62
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->loginDone(I)V

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {p1, v5}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$402(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Z)Z

    .line 74
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->setLastUid(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$400(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/OnLoginDoneListener;->loginDone(I)V

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$500(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$600(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$300(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$1;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$200(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$500(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
