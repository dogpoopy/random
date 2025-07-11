.class Lcom/netease/mpay/oversea/thirdapi/o$c;
.super Lcom/netease/mpay/oversea/s;
.source "NaverApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/s<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field p:Landroid/app/Activity;

.field q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$c;->p:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o$c;->q:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o$c;->p:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/nhn/android/naverlogin/OAuthLogin;->logoutAndDeleteToken(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o$c;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$c;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o$c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
