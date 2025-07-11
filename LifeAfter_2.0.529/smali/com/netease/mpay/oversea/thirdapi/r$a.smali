.class Lcom/netease/mpay/oversea/thirdapi/r$a;
.super Ljava/lang/Object;
.source "TikTokApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/r;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/r;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/r$a;->a:Lcom/netease/mpay/oversea/thirdapi/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/r$a;->a:Lcom/netease/mpay/oversea/thirdapi/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/r$a;->a:Lcom/netease/mpay/oversea/thirdapi/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v1}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
