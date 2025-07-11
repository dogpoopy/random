.class Lcom/netease/mpay/oversea/thirdapi/n$e;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

.field final synthetic e:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->e:Lcom/netease/mpay/oversea/thirdapi/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->d:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/trident/android/binding/AuthManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->d:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz v0, :cond_0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$e;->d:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    const/16 v1, 0x12f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    .line 9
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/trident/android/binding/AuthManager;->signOut()V

    :cond_1
    return-void
.end method
