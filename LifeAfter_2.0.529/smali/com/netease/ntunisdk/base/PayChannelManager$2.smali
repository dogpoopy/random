.class final Lcom/netease/ntunisdk/base/PayChannelManager$2;
.super Ljava/lang/Object;
.source "PayChannelManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/PayChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/PayChannelManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/PayChannelManager;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getPayChannelFromJF Result : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UniSDK PCM"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 96
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    const-string p1, "ff_channel"

    .line 98
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allysdk"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/PayChannelManager;->a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z

    :goto_0
    return p2
.end method
