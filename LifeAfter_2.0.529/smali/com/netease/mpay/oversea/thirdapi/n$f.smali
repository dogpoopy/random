.class Lcom/netease/mpay/oversea/thirdapi/n$f;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 v0, 0xcc

    invoke-static {p1, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/thirdapi/n;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/thirdapi/n$f;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    return-void
.end method
