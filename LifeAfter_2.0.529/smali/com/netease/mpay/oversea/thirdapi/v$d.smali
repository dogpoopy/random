.class public Lcom/netease/mpay/oversea/thirdapi/v$d;
.super Ljava/lang/Object;
.source "WeChatApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/v$d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/oversea/thirdapi/v$e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/thirdapi/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/v$d;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/mpay/oversea/thirdapi/v$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/v$d$a;->a:Lcom/netease/mpay/oversea/thirdapi/v$d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$d;->b:Lcom/netease/mpay/oversea/thirdapi/v$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/v$e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$d;->b:Lcom/netease/mpay/oversea/thirdapi/v$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/v$e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/thirdapi/v$e;)Z
    .locals 1

    const-string v0, "wechat:login"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/v$d;->b:Lcom/netease/mpay/oversea/thirdapi/v$e;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/v$d;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p3

    .line 6
    invoke-interface {p3, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 7
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v0, "snsapi_userinfo"

    .line 8
    iput-object v0, p2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/v$c;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/v$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/v$c;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 10
    invoke-interface {p3, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p1

    return p1
.end method
