.class Lcom/netease/mpay/oversea/thirdapi/t$b;
.super Ljava/lang/Object;
.source "VkApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/thirdapi/t;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/t;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->c:Lcom/netease/mpay/oversea/thirdapi/t;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/t$b;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    const/16 p1, 0xcb

    .line 10
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/t$b;->onFailure(I)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    const/16 p1, 0xcc

    .line 12
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/t$b;->onFailure(I)V

    :cond_3
    :goto_1
    return-void
.end method
