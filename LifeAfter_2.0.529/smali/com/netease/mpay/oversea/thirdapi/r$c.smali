.class public Lcom/netease/mpay/oversea/thirdapi/r$c;
.super Ljava/lang/Object;
.source "TikTokApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/r$c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/oversea/thirdapi/r$d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/thirdapi/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/r$c;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/mpay/oversea/thirdapi/r$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/r$c$a;->a:Lcom/netease/mpay/oversea/thirdapi/r$c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/r$c;->b:Lcom/netease/mpay/oversea/thirdapi/r$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/r$d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/r$c;->b:Lcom/netease/mpay/oversea/thirdapi/r$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/r$d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/thirdapi/r$d;)Z
    .locals 1

    const-string v0, "tiktok:login"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/r$c;->b:Lcom/netease/mpay/oversea/thirdapi/r$d;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/r$c;->a:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    iget-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/r$c;->a:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->init(Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;)Z

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object p2

    .line 8
    new-instance p3, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    invoke-direct {p3}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;-><init>()V

    const-string v0, "user.info.basic"

    .line 9
    iput-object v0, p3, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    .line 10
    const-class v0, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->callerLocalEntry:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/r$b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/r$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/r$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->state:Ljava/lang/String;

    .line 12
    invoke-interface {p2, p3}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->authorize(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z

    move-result p1

    return p1
.end method
