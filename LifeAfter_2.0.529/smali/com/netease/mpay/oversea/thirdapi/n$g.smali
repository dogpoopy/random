.class Lcom/netease/mpay/oversea/thirdapi/n$g;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->f:Lcom/netease/mpay/oversea/thirdapi/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->e:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/n$g;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$g$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/n$g$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/n$g;)V

    invoke-virtual {v0, v1}, Lcom/linecorp/trident/android/binding/AuthManager;->signOut(Lcom/linecorp/trident/android/binding/CallBackListener2;)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n$g$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/n$g$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/n$g;)V

    invoke-virtual {v0, v1}, Lcom/linecorp/trident/android/binding/AuthManager;->signOut(Lcom/linecorp/trident/android/binding/CallBackListener2;)V

    :cond_3
    :goto_1
    return-void
.end method
