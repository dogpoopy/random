.class Lcom/netease/mpay/oversea/thirdapi/n$b;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/CheckApiAuthCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->a:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->a:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
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
    iget-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->a:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz p1, :cond_1

    const/16 p2, 0x12c

    const/4 p3, 0x1

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->c:Lcom/netease/mpay/oversea/thirdapi/n;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/n$b;->a:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    invoke-static {p3, p1, p2, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
